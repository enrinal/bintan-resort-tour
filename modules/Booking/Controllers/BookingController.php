<?php
namespace Modules\Booking\Controllers;


use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Mockery\Exception;
//use Modules\Booking\Events\VendorLogPayment;
use Modules\Tour\Models\TourDate;
use Validator;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Modules\Booking\Models\Booking;
use Modules\Core\Models\Settings;
use App\Helpers\ReCaptchaEngine;
use Midtrans;
use Midtrans\Config;


class BookingController extends \App\Http\Controllers\Controller
{
    use AuthorizesRequests;
    protected $booking;
    
    public function __construct()
    {
        $this->booking = Booking::class;
    }

    public function checkout($code)
    {

        $booking = $this->booking::where('code', $code)->first();

        if (empty($booking)) {
            abort(404);
        }
        if ($booking->customer_id != Auth::id()) {
            abort(404);
        }

        if($booking->status != 'draft'){
            return redirect('/');
        }
        $data = [
            'page_title' => __('Checkout'),
            'booking'    => $booking,
            'service'    => $booking->service,
            'gateways'   => $this->getGateways(),
            'user'       => Auth::user()
        ];
        return view('Booking::frontend/checkout', $data);
    }

    public function checkStatusCheckout($code)
    {
        $booking = $this->booking::where('code', $code)->first();
        $data = [
            'error'    => false,
            'message'  => '',
            'redirect' => ''
        ];
        if (empty($booking)) {
            $data = [
                'error'    => true,
                'redirect' => url('/')
            ];
        }
        if ($booking->customer_id != Auth::id()) {
            $data = [
                'error'    => true,
                'redirect' => url('/')
            ];
        }
        if ($booking->status != 'draft') {
            $data = [
                'error'    => true,
                'redirect' => url('/')
            ];
        }
        return response()->json($data, 200);
    }

    public function doCheckout(Request $request)
    {

        /**
         * @param Booking $booking
         */
        $validator = Validator::make($request->all(), [
            'code' => 'required',
        ]);
        if ($validator->fails()) {
            $this->sendError('', ['errors' => $validator->errors()]);
        }
        $code = $request->input('code');
        $booking = $this->booking::where('code', $code)->first();
        if (empty($booking)) {
            abort(404);
        }
        if ($booking->customer_id != Auth::id()) {
            abort(404);
        }
        if ($booking->status != 'draft') {
            return $this->sendError('',[
                'url'=>$booking->getDetailUrl()
            ]);
        }
        $service = $booking->service;
        if (empty($service)) {
            $this->sendError(__("Service not found"));
        }
        /**
         * Google ReCapcha
         */
        if(ReCaptchaEngine::isEnable() and setting_item("booking_enable_recaptcha")){
            $codeCapcha = $request->input('g-recaptcha-response');
            if(!$codeCapcha or !ReCaptchaEngine::verify($codeCapcha)){
                $this->sendError(__("Please verify the captcha"));
            }
        }
        $rules = [
            'first_name'      => 'required|string|max:255',
            'last_name'       => 'required|string|max:255',
            'email'           => 'required|string|email|max:255',
            'phone'           => 'required|string|max:255',
            'country' => 'required',
            'payment_gateway' => 'required',
            'term_conditions' => 'required'
        ];
        $rules = $service->filterCheckoutValidate($request, $rules);
        if (!empty($rules)) {
            $validator = Validator::make($request->all(), $rules);
            if ($validator->fails()) {
                $this->sendError('', ['errors' => $validator->errors()]);
            }
        }
        if (!empty($rules['payment_gateway'])) {
            $payment_gateway = $request->input('payment_gateway');
            $gateways = get_payment_gateways();
            if (empty($gateways[$payment_gateway]) or !class_exists($gateways[$payment_gateway])) {
                $this->sendError(__("Payment gateway not found"));
            }
            $gatewayObj = new $gateways[$payment_gateway]($payment_gateway);
            if (!$gatewayObj->isAvailable()) {
                $this->sendError(__("Payment gateway is not available"));
            }
        }
        $service->beforeCheckout($request, $booking);
        // Normal Checkout
        $booking->first_name = $request->input('first_name');
        $booking->last_name = $request->input('last_name');
        $booking->email = $request->input('email');
        $booking->phone = $request->input('phone');
        $booking->address = $request->input('address_line_1');
        $booking->address2 = $request->input('address_line_2');
        $booking->city = $request->input('city');
        $booking->state = $request->input('state');
        $booking->zip_code = $request->input('zip_code');
        $booking->country = $request->input('country');
        $booking->customer_notes = $request->input('customer_notes');
        $booking->gateway = $payment_gateway;
        $booking->save();

//        event(new VendorLogPayment($booking));

        $user = Auth::user();
        $user->first_name = $request->input('first_name');
        $user->last_name = $request->input('last_name');
        $user->phone = $request->input('phone');
        $user->address = $request->input('address_line_1');
        $user->address2 = $request->input('address_line_2');
        $user->city = $request->input('city');
        $user->state = $request->input('state');
        $user->zip_code = $request->input('zip_code');
        $user->country = $request->input('country');
        $user->save();

        $booking->addMeta('locale',app()->getLocale());

        $service->afterCheckout($request, $booking);
        try {

            $gatewayObj->process($request, $booking, $service);
        } catch (Exception $exception) {
            $this->sendError($exception->getMessage());
        }
    }

    public function confirmPayment(Request $request, $gateway)
    {

        $gateways = get_payment_gateways();
        if (empty($gateways[$gateway]) or !class_exists($gateways[$gateway])) {
            $this->sendError(__("Payment gateway not found"));
        }
        $gatewayObj = new $gateways[$gateway]($gateway);
        if (!$gatewayObj->isAvailable()) {
            $this->sendError(__("Payment gateway is not available"));
        }
        return $gatewayObj->confirmPayment($request);
    }

    public function cancelPayment(Request $request, $gateway)
    {

        $gateways = get_payment_gateways();
        if (empty($gateways[$gateway]) or !class_exists($gateways[$gateway])) {
            $this->sendError(__("Payment gateway not found"));
        }
        $gatewayObj = new $gateways[$gateway]($gateway);
        if (!$gatewayObj->isAvailable()) {
            $this->sendError(__("Payment gateway is not available"));
        }
        return $gatewayObj->cancelPayment($request);
    }

    /**
     * @todo Handle Add To Cart Validate
     *
     * @param Request $request
     * @return string json
     */
    public function addToCart(Request $request)
    {

        $validator = Validator::make($request->all(), [
            'service_id'   => 'required|integer',
            'service_type' => 'required'
        ]);
        if ($validator->fails()) {
            $this->sendError('', ['errors' => $validator->errors()]);
        }
        $service_type = $request->input('service_type');
        $service_id = $request->input('service_id');
        $allServices = get_bookable_services();
        if (empty($allServices[$service_type])) {
            $this->sendError(__('Service type not found'));
        }
        $module = $allServices[$service_type];
        $service = $module::find($service_id);
        if (empty($service) or !is_subclass_of($service, '\\Modules\\Booking\\Models\\Bookable')) {
            $this->sendError(__('Service not found'));
        }
        if (!$service->isBookable()) {
            $this->sendError(__('Service is not bookable'));
        }
        //        try{
        $service->addToCart($request);
        //
        //        }catch(\Exception $ex){
        //            $this->sendError($ex->getMessage(),['code'=>$ex->getCode()]);
        //        }
    }

    protected function getGateways()
    {

        $all = get_payment_gateways();
        $res = [];
        foreach ($all as $k => $item) {
            if (class_exists($item)) {
                $obj = new $item($k);
                if ($obj->isAvailable()) {
                    $res[$k] = $obj;
                }
            }
        }
        return $res;
    }

    public function detail(Request $request, $code)
    {

        $booking = Booking::where('code', $code)->first();
        if (empty($booking)) {
            abort(404);
        }

        if ($booking->status == 'draft') {
            return redirect($booking->getCheckoutUrl());
        }
        if ($booking->customer_id != Auth::id()) {
            abort(404);
        }
        $data = [
            'page_title' => __('Booking Details'),
            'booking'    => $booking,
            'service'    => $booking->service,
        ];
        if ($booking->gateway) {
            $data['gateway'] = get_payment_gateway_obj($booking->gateway);
        }
        return view('Booking::frontend/detail', $data);
    }

    public function detailSuccess(Request $request)
    {

        $booking = Booking::where('code', $request->input('order_id'))->first();
        if (empty($booking)) {
            abort(404);
        }

        if ($booking->status == 'draft') {
            return redirect($booking->getCheckoutUrl());
        }
        if ($booking->customer_id != Auth::id()) {
            abort(404);
        }
        $data = [
            'page_title' => __('Booking Details'),
            'booking'    => $booking,
            'service'    => $booking->service,
        ];
        if ($booking->gateway) {
            $data['gateway'] = get_payment_gateway_obj($booking->gateway);
        }
        return view('Booking::frontend/detail', $data);
    }
    public function notificationHandler(Request $request)
    {
        $res = Settings::getSettings($group = 'payment');
        if ($res['g_midtrans_enable'] == 1) {
            Config::$serverKey = $res['g_midtrans_test_client_id'];
            Config::$clientKey = $res['g_midtrans_test_account'];
            Config::$isProduction = false;
        }else{
            Config::$serverKey = $res['g_midtrans_client_id'];
            Config::$clientKey = $res['g_midtrans_account'];
            Config::$isProduction = true;
        }
        $notif = new Midtrans\Notification();
        $transaction = $notif->transaction_status;
        $fraud = $notif->fraud_status;
        $orderId = $notif->order_id;
        error_log("Order ID $notif->order_id: "."transaction status = $transaction, fraud staus = $fraud");
        $booking = Booking::where('code',  $orderId)->first();
        if ($transaction == 'capture') {
 
            // For credit card transaction, we need to check whether transaction is challenge by FDS or not
            if ($type == 'credit_card') {
 
              if($fraud == 'challenge') {
                // TODO set payment status in merchant's database to 'Challenge by FDS'
                // TODO merchant should decide whether this transaction is authorized or not in MAP
                // $donation->addUpdate("Transaction order_id: " . $orderId ." is challenged by FDS");
                //$donation->setPending();
              } else {
                // TODO set payment status in merchant's database to 'Success'
                // $donation->addUpdate("Transaction order_id: " . $orderId ." successfully captured using " . $type);
                $booking->markAsPaid();
              }
 
            }
 
          } elseif ($transaction == 'settlement') {
 
            // TODO set payment status in merchant's database to 'Settlement'
            // $donation->addUpdate("Transaction order_id: " . $orderId ." successfully transfered using " . $type);
            $booking->markAsPaid();
 
          } elseif($transaction == 'pending'){
 
            // TODO set payment status in merchant's database to 'Pending'
            // $donation->addUpdate("Waiting customer to finish transaction order_id: " . $orderId . " using " . $type);
            //$donation->setPending();
 
          } elseif ($transaction == 'deny') {
 
            // TODO set payment status in merchant's database to 'Failed'
            // $donation->addUpdate("Payment using " . $type . " for transaction order_id: " . $orderId . " is Failed.");
            $booking->markAsmarkAsPaymentFailedPaid();
 
          } elseif ($transaction == 'expire') {
 
            // TODO set payment status in merchant's database to 'expire'
            // $donation->addUpdate("Payment using " . $type . " for transaction order_id: " . $orderId . " is expired.");
            $booking->markAsmarkAsPaymentFailedPaid();
 
          } elseif ($transaction == 'cancel') {
 
            // TODO set payment status in merchant's database to 'Failed'
            // $donation->addUpdate("Payment using " . $type . " for transaction order_id: " . $orderId . " is canceled.");
            $booking->markAsmarkAsPaymentFailedPaid();
 
          }
    }
}
