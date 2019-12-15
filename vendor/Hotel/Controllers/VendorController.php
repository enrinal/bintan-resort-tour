<?php
namespace Modules\Hotel\Controllers;

use Modules\FrontendController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Modules\Hotel\Models\Hotel;
use Modules\Location\Models\Location;
use Modules\Core\Models\Attributes;
use Modules\Booking\Models\Booking;
use Modules\Hotel\Models\HotelTerm;
use Modules\Hotel\Models\HotelTranslation;

class VendorController extends FrontendController
{
    protected $hotelClass;
    protected $hotelTranslationClass;
    protected $hotelTermClass;
    protected $attributesClass;
    protected $locationClass;
    protected $bookingClass;
    public function __construct()
    {
        parent::__construct();
        $this->hotelClass = Hotel::class;
        $this->hotelTranslationClass = HotelTranslation::class;
        $this->hotelTermClass = HotelTerm::class;
        $this->attributesClass = Attributes::class;
        $this->locationClass = Location::class;
        $this->bookingClass = Booking::class;
    }

    public function callAction($method, $parameters)
    {
        if(!Hotel::isEnable())
        {
            return redirect('/');
        }
        return parent::callAction($method, $parameters); // TODO: Change the autogenerated stub
    }

    public function index(Request $request)
    {
        $this->checkPermission('hotel_view');
        $user_id = Auth::id();
        $list_hotel = $this->hotelClass::where("create_user", $user_id)->orderBy('id', 'desc');
        $data = [
            'rows' => $list_hotel->paginate(5),
            'breadcrumbs'        => [
                [
                    'name' => __('Manage Hotels'),
                    'url'  => route('hotel.vendor.index')
                ],
                [
                    'name'  => __('All'),
                    'class' => 'active'
                ],
            ],
            'page_title'         => __("Manage Hotels"),
        ];
        return view('Hotel::frontend.vendorHotel.index', $data);
    }

    public function create(Request $request)
    {
        $this->checkPermission('hotel_create');
        $row = new $this->hotelClass();
        $data = [
            'row'           => $row,
            'translation' => new $this->hotelTranslationClass(),
            'hotel_location' => $this->locationClass::get()->toTree(),
            'attributes'    => $this->attributesClass::where('service', 'hotel')->get(),
            'breadcrumbs'        => [
                [
                    'name' => __('Manage Hotels'),
                    'url'  => route('hotel.vendor.index')
                ],
                [
                    'name'  => __('Create'),
                    'class' => 'active'
                ],
            ],
            'page_title'         => __("Create Hotels"),
        ];
        return view('Hotel::frontend.vendorHotel.detail', $data);
    }


    public function store( Request $request, $id ){

        if($id>0){
            $this->checkPermission('hotel_update');
            $row = $this->hotelClass::find($id);
            if (empty($row)) {
                return redirect(route('hotel.vendor.index'));
            }

            if($row->create_user != Auth::id() and !$this->hasPermission('hotel_manage_others'))
            {
                return redirect(route('hotel.vendor.index'));
            }
        }else{
            $this->checkPermission('hotel_create');
            $row = new $this->hotelClass();
            $row->status = "publish";
            if(setting_item("hotel_vendor_create_service_must_approved_by_admin", 0)){
                $row->status = "pending";
            }
        }
        $dataKeys = [
            'title',
            'content',
            'slug',
            'video',
            'image_id',
            'banner_image_id',
            'gallery',
            'is_featured',
            'policy',
            'location_id',
            'address',
            'map_lat',
            'map_lng',
            'map_zoom',
            'star_rate',
            'price',
            'sale_price',
            'check_in_time',
            'check_out_time',
            'allow_full_day',
        ];
        if($this->hasPermission('hotel_manage_others')){
            $dataKeys[] = 'create_user';
        }

        $row->fillByAttr($dataKeys,$request->input());

        $res = $row->saveOriginOrTranslation($request->input('lang'),true);

        if ($res) {
            if(!$request->input('lang') or is_default_lang($request->input('lang'))) {
                $this->saveTerms($row, $request);
            }

            if($id > 0 ){
                return back()->with('success',  __('Hotel updated') );
            }else{
                return redirect(route('hotel.vendor.edit',['id'=>$row->id]))->with('success', __('Hotel created') );
            }
        }
    }

    public function saveTerms($row, $request)
    {
        if (empty($request->input('terms'))) {
            $this->hotelTermClass::where('target_id', $row->id)->delete();
        } else {
            $term_ids = $request->input('terms');
            foreach ($term_ids as $term_id) {
                $this->hotelTermClass::firstOrCreate([
                    'term_id' => $term_id,
                    'target_id' => $row->id
                ]);
            }
            $this->hotelTermClass::where('target_id', $row->id)->whereNotIn('term_id', $term_ids)->delete();
        }
    }

    public function edit(Request $request, $id)
    {
        $this->checkPermission('hotel_update');
        $user_id = Auth::id();
        $row = $this->hotelClass::where("create_user", $user_id);
        $row = $row->find($id);
        if (empty($row)) {
            return redirect(route('hotel.vendor.index'))->with('warning', __('Space not found!'));
        }
        $translation = $row->translateOrOrigin($request->query('lang'));
        $data = [
            'translation'    => $translation,
            'row'           => $row,
            'hotel_location' => $this->locationClass::get()->toTree(),
            'attributes'    => $this->attributesClass::where('service', 'hotel')->get(),
            "selected_terms" => $row->terms->pluck('term_id'),
            'breadcrumbs'        => [
                [
                    'name' => __('Manage Hotels'),
                    'url'  => route('hotel.vendor.index')
                ],
                [
                    'name'  => __('Edit'),
                    'class' => 'active'
                ],
            ],
            'page_title'         => __("Edit Hotels"),
        ];
        return view('Hotel::frontend.vendorHotel.detail', $data);
    }

    public function delete($id)
    {
        $this->checkPermission('hotel_delete');
        $user_id = Auth::id();
        $query = $this->hotelClass::where("create_user", $user_id)->where("id", $id)->first();
        if(!empty($query)){
            $query->delete();
        }
        return redirect(route('hotel.vendor.index'))->with('success', __('Delete hotel success!'));
    }

    public function bulkEditHotel($id , Request $request){
        $this->checkPermission('hotel_update');
        $action = $request->input('action');
        $user_id = Auth::id();
        $query = $this->hotelClass::where("create_user", $user_id)->where("id", $id)->first();
        if (empty($id)) {
            return redirect()->back()->with('error', __('No item!'));
        }
        if (empty($action)) {
            return redirect()->back()->with('error', __('Please select an action!'));
        }
        if(empty($query)){
            return redirect()->back()->with('error', __('Not Found'));
        }
        switch ($action){
            case "make-hide":
                $query->status = "draft";
                break;
            case "make-publish":
                $query->status = "publish";
                break;
        }
        $query->save();
        return redirect()->back()->with('success', __('Update success!'));
    }

    public function bookingReport(Request $request)
    {
        $data = [
            'bookings' => $this->bookingClass::getBookingHistory($request->input('status'), false , Auth::id() , 'hotel'),
            'statues'  => config('booking.statuses'),
            'breadcrumbs'        => [
                [
                    'name' => __('Manage Hotel'),
                    'url'  => route('hotel.vendor.index')
                ],
                [
                    'name' => __('Booking Report'),
                    'class'  => 'active'
                ]
            ],
            'page_title'         => __("Booking Report"),
        ];
        return view('Hotel::frontend.vendorHotel.bookingReport', $data);
    }

    public function bookingReportBulkEdit($booking_id , Request $request){
        $status = $request->input('status');
        if (!empty(setting_item("hotel_allow_vendor_can_change_their_booking_status")) and !empty($status) and !empty($booking_id)) {
            $query = $this->bookingClass::where("id", $booking_id);
            $query->where("vendor_id", Auth::id());
            $item = $query->first();
            if(!empty($item)){
                $item->status = $status;
                $item->save();
                $item->sendStatusUpdatedEmails();
                return redirect()->back()->with('success', __('Update success'));
            }
            return redirect()->back()->with('error', __('Booking not found!'));
        }
        return redirect()->back()->with('error', __('Update fail!'));
    }
}