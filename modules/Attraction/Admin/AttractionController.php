<?php
namespace Modules\Attraction\Admin;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Modules\AdminController;
use Modules\Core\Models\Attributes;
use Modules\Attraction\Models\AttractionTerm;
use Modules\Attraction\Models\Attraction;
use Modules\Attraction\Models\AttractionCategory;
use Modules\Attraction\Models\AttractionTranslation;
use Modules\Location\Models\Location;

class AttractionController extends AdminController
{
    protected $attractionClass;
    protected $attractionTranslationClass;
    protected $attractionCategoryClass;
    protected $attractionTermClass;
    protected $attributesClass;
    protected $locationClass;

    public function __construct()
    {
        parent::__construct();
        $this->setActiveMenu('admin/module/attraction');
        $this->attractionClass = Attraction::class;
        $this->attractionTranslationClass = AttractionTranslation::class;
        $this->attractionCategoryClass = AttractionCategory::class;
        $this->attractionTermClass = AttractionTerm::class;
        $this->attributesClass = Attributes::class;
        $this->locationClass = Location::class;
    }

    public function index(Request $request)
    {
        $this->checkPermission('tour_view');
        $query = $this->attractionClass::query() ;
        $query->orderBy('id', 'desc');
        if (!empty($attraction_name = $request->input('s'))) {
            $query->where('title', 'LIKE', '%' . $attraction_name . '%');
            $query->orderBy('title', 'asc');
        }
        if (!empty($cate = $request->input('cate_id'))) {
            $query->where('category_id', $cate);
        }
        if ($this->hasPermission('tour_manage_others')) {
            if (!empty($author = $request->input('vendor_id'))) {
                $query->where('create_user', $author);
            }
        } else {
            $query->where('create_user', Auth::id());
        }
        $data = [
            'rows'               => $query->with(['getAuthor','category_attraction'])->paginate(20),
            'attraction_categories'    => $this->attractionCategoryClass::where('status', 'publish')->get()->toTree(),
            'tour_manage_others' => $this->hasPermission('tour_manage_others'),
            'page_title'=>__("Attraction Management"),
            'breadcrumbs'        => [
                [
                    'name' => __('Attractions'),
                    'url'  => 'admin/module/attraction'
                ],
                [
                    'name'  => __('All'),
                    'class' => 'active'
                ],
            ]
        ];
        return view('Attraction::admin.index', $data);
    }

    public function create(Request $request)
    {
        $this->checkPermission('tour_create');
        $row = new Attraction();
        $row->fill([
            'status' => 'publish'
        ]);
        $data = [
            'row'           => $row,
            'attributes'    => $this->attributesClass::where('service', 'attraction')->get(),
            'attraction_category' => $this->attractionCategoryClass::where('status', 'publish')->get()->toTree(),
            'attraction_location' => $this->locationClass::where('status', 'publish')->get()->toTree(),
            'translation' => new $this->attractionTranslationClass(),
            'breadcrumbs'   => [
                [
                    'name' => __('Attractions'),
                    'url'  => 'admin/module/attraction'
                ],
                [
                    'name'  => __('Add Attraction'),
                    'class' => 'active'
                ],
            ]
        ];
        return view('Attraction::admin.detail', $data);
    }

    public function edit(Request $request, $id)
    {
        $this->checkPermission('tour_update');
        $row = $this->attractionClass::find($id);
        if (empty($row)) {
            return redirect('admin/module/attraction');
        }
        $translation = $row->translateOrOrigin($request->query('lang'));
        if (!$this->hasPermission('tour_manage_others')) {
            if ($row->create_user != Auth::id()) {
                return redirect('admin/module/attraction');
            }
        }
        $data = [
            'row'            => $row,
            'translation'    => $translation,
            "selected_terms" => $row->attraction_term->pluck('term_id'),
            'attributes'     => $this->attributesClass::where('service', 'attraction')->get(),
            'attraction_category'  => $this->attractionCategoryClass::where('status', 'publish')->get()->toTree(),
            'attraction_location'  => $this->locationClass::where('status', 'publish')->get()->toTree(),
            'enable_multi_lang'=>true,
            'breadcrumbs'    => [
                [
                    'name' => __('Attractions'),
                    'url'  => 'admin/module/attraction'
                ],
                [
                    'name'  => __('Edit Attraction'),
                    'class' => 'active'
                ],
            ]
        ];
        return view('Attraction::admin.detail', $data);
    }

    public function store( Request $request, $id ){

        if($id>0){
            $this->checkPermission('tour_update');
            $row = $this->attractionClass::find($id);
            if (empty($row)) {
                return redirect(route('attraction.admin.index'));
            }
            if($row->create_user != Auth::id() and !$this->hasPermission('tour_manage_others'))
            {
                return redirect(route('space.admin.index'));
            }

        }else{
            $this->checkPermission('tour_create');
            $row = new $this->attractionClass();
            $row->status = "publish";
        }
        $row->fill($request->input());
        $row->create_user = $request->input('create_user');
        $row->default_state = $request->input('default_state',1);
        $res = $row->saveOriginOrTranslation($request->input('lang'),true);
        if ($res) {
            if(!$request->input('lang') or is_default_lang($request->input('lang'))) {
                $this->saveTerms($row, $request);
            }
            $row->saveMeta($request);
            if($id > 0 ){
                return back()->with('success',  __('Attraction updated') );
            }else{
                return redirect(route('attraction.admin.edit',$row->id))->with('success', __('Attraction created') );
            }
        }
    }

    public function saveTerms($row, $request)
    {
        if (empty($request->input('terms'))) {
            $this->attractionTermClass::where('attraction_id', $row->id)->delete();
        } else {
            $term_ids = $request->input('terms');
            foreach ($term_ids as $term_id) {
                $this->attractionTermClass::firstOrCreate([
                    'term_id' => $term_id,
                    'attraction_id' => $row->id
                ]);
            }
            $this->attractionTermClass::where('attraction_id', $row->id)->whereNotIn('term_id', $term_ids)->delete();
        }
    }

    public function bulkEdit(Request $request)
    {

        $ids = $request->input('ids');
        $action = $request->input('action');
        if (empty($ids) or !is_array($ids)) {
            return redirect()->back()->with('error', __('No items selected!'));
        }
        if (empty($action)) {
            return redirect()->back()->with('error', __('Please select an action!'));
        }

        switch ($action){
            case "delete":
                foreach ($ids as $id) {
                    $query = $this->attractionClass::where("id", $id);
                    if (!$this->hasPermission('tour_manage_others')) {
                        $query->where("create_user", Auth::id());
                        $this->checkPermission('attraction_delete');
                    }
                    $query->first();
                    if(!empty($query)){
                        $query->delete();
                    }
                }
                return redirect()->back()->with('success', __('Deleted success!'));
                break;
            case "clone":
                $this->checkPermission('tour_create');
                foreach ($ids as $id) {
                    (new $this->attractionClass())->saveCloneByID($id);
                }
                return redirect()->back()->with('success', __('Clone success!'));
                break;
            default:
                // Change status
                foreach ($ids as $id) {
                    $query = $this->attractionClass::where("id", $id);
                    if (!$this->hasPermission('tour_manage_others')) {
                        $query->where("create_user", Auth::id());
                        $this->checkPermission('tour_update');
                    }
                    $query->update(['status' => $action]);
                }
                return redirect()->back()->with('success', __('Update success!'));
                break;
        }
    }
}
