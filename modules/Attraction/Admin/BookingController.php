<?php
namespace Modules\Attraction\Admin;

use Illuminate\Http\Request;
use Modules\AdminController;
use Modules\Attraction\Models\Attraction;
use Modules\Attraction\Models\AttractionCategory;

class BookingController extends AdminController
{
    protected $attractionClass;
    public function __construct()
    {
        $this->setActiveMenu('admin/module/attraction');
        parent::__construct();
        $this->attractionClass = Attraction::class;
    }

    public function index(Request $request){

        $this->checkPermission('tour_create');

        $q = $this->attractionClass::query();

        if($request->query('s')){
            $q->where('title','like','%'.$request->query('s').'%');
        }

        if ($cat_id = $request->query('cat_id')) {
            $cat = AttractionCategory::find($cat_id);
            if(!empty($cat)) {
                $q->join('bravo_attraction_category', function ($join) use ($cat) {
                    $join->on('bravo_attraction_category.id', '=', 'bravo_attractions.category_id')
                        ->where('bravo_attraction_category._lft','>=',$cat->_lft)
                        ->where('bravo_attraction_category._rgt','>=',$cat->_lft);
                });
            }
        }

        if(!$this->hasPermission('tour_manage_others')){
            $q->where('create_user',$this->currentUser()->id);
        }

        $q->orderBy('bravo_attractions.id','desc');

        $rows = $q->paginate(10);

        $current_month = strtotime(date('Y-m-01',time()));

        if($request->query('month')){
            $date = date_create_from_format('m-Y',$request->query('month'));
            if(!$date){
                $current_month = time();
            }else{
                $current_month = $date->getTimestamp();
            }
        }

        $prev_url = url('admin/module/attraction/booking/').'?'.http_build_query(array_merge($request->query(),[
           'month'=> date('m-Y',$current_month - MONTH_IN_SECONDS)
        ]));
        $next_url = url('admin/module/attraction/booking/').'?'.http_build_query(array_merge($request->query(),[
           'month'=> date('m-Y',$current_month + MONTH_IN_SECONDS)
        ]));

        $attraction_categories = AttractionCategory::where('status', 'publish')->get()->toTree();
        $breadcrumbs = [
            [
                'name' => __('Attractions'),
                'url'  => 'admin/module/attraction'
            ],
            [
                'name'  => __('Booking'),
                'class' => 'active'
            ],
        ];
        $page_title = __('Attraction Booking History');
        return view('Attraction::admin.booking.index',compact('rows','attraction_categories','breadcrumbs','current_month','page_title','request','prev_url','next_url'));
    }
    public function test(){
        $d = new \DateTime('2019-07-04 00:00:00');

        $d->modify('+ 4 hours');
        echo $d->format('Y-m-d H:i:s');
    }
}