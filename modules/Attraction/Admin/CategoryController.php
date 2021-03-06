<?php
namespace Modules\Attraction\Admin;

use Illuminate\Http\Request;
use Modules\AdminController;
use Modules\Attraction\Models\AttractionCategory;
use Modules\Attraction\Models\AttractionCategoryTranslation;

class CategoryController extends AdminController
{
    protected $attractionCategoryClass;
    public function __construct()
    {
        parent::__construct();
        $this->setActiveMenu('admin/module/attraction');
        $this->attractionCategoryClass = AttractionCategory::class;
    }

    public function index(Request $request)
    {
        $this->checkPermission('tour_manage_others');
        $listCategory = $this->attractionCategoryClass::query();
        if (!empty($search = $request->query('s'))) {
            $listCategory->where('name', 'LIKE', '%' . $search . '%');
        }
        $listCategory->orderBy('created_at', 'desc');
        $data = [
            'rows'        => $listCategory->get()->toTree(),
            'row'         => new $this->attractionCategoryClass(),
            'translation'    => new AttractionCategoryTranslation(),
            'breadcrumbs' => [
                [
                    'name' => __('Attraction'),
                    'url'  => 'admin/module/attraction'
                ],
                [
                    'name'  => __('Category'),
                    'class' => 'active'
                ],
            ]
        ];
        return view('Attraction::admin.category.index', $data);
    }

    public function edit(Request $request, $id)
    {
        $this->checkPermission('tour_manage_others');
        $row = $this->attractionCategoryClass::find($id);
        if (empty($row)) {
            return redirect(route('attraction.admin.category.index'));
        }
        $translation = $row->translateOrOrigin($request->query('lang'));
        $data = [
            'translation'    => $translation,
            'enable_multi_lang'=>true,
            'row'         => $row,
            'parents'     => $this->attractionCategoryClass::get()->toTree(),
            'breadcrumbs' => [
                [
                    'name' => __('Attraction'),
                    'url'  => 'admin/module/attraction'
                ],
                [
                    'name'  => __('Category'),
                    'class' => 'active'
                ],
            ]
        ];
        return view('Attraction::admin.category.detail', $data);
    }

    public function store(Request $request , $id)
    {
        $this->checkPermission('tour_manage_others');
        $this->validate($request, [
            'name' => 'required'
        ]);
        if($id>0){
            $row = $this->attractionCategoryClass::find($id);
            if (empty($row)) {
                return redirect(route('attraction.admin.category.index'));
            }
        }else{
            $row = new $this->attractionCategoryClass();
            $row->status = "publish";
        }

        $row->fill($request->input());
        $res = $row->saveOriginOrTranslation($request->input('lang'),true);

        if ($res) {
            return back()->with('success',  __('Category saved') );
        }
    }

    public function editBulk(Request $request)
    {
        $this->checkPermission('tour_manage_others');
        $ids = $request->input('ids');
        $action = $request->input('action');
        if (empty($ids) or !is_array($ids)) {
            return redirect()->back()->with('error', __('Select at least 1 item!'));
        }
        if (empty($action)) {
            return redirect()->back()->with('error', __('Select an Action!'));
        }
        if ($action == "delete") {
            foreach ($ids as $id) {
                $query = $this->attractionCategoryClass::where("id", $id)->first();
                if(!empty($query)){
                    $query->delete();
                }
            }
        } else {
            foreach ($ids as $id) {
                $query = $this->attractionCategoryClass::where("id", $id);
                $query->update(['status' => $action]);
            }
        }
        return redirect()->back()->with('success', __('Updated success!'));
    }

    public function getForSelect2(Request $request)
    {
        $pre_selected = $request->query('pre_selected');
        $selected = $request->query('selected');

        if($pre_selected && $selected){
            $item = $this->attractionCategoryClass::find($selected);
            if(empty($item)){
                return response()->json([
                    'text'=>''
                ]);
            }else{
                return response()->json([
                    'text'=>$item->name
                ]);
            }
        }
        $q = $request->query('q');
        $query = $this->attractionCategoryClass::select('id', 'name as text')->where("status","publish");
        if ($q) {
            $query->where('name', 'like', '%' . $q . '%');
        }
        $res = $query->orderBy('id', 'desc')->limit(20)->get();
        return response()->json([
            'results' => $res
        ]);
    }
}
