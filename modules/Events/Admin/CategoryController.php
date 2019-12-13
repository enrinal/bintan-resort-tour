<?php
namespace Modules\Events\Admin;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Modules\AdminController;
use Modules\Events\Models\EventsCategory;
use Illuminate\Support\Str;
use Modules\Events\Models\EventsCategoryTranslation;

class CategoryController extends AdminController
{
    public function __construct()
    {
        $this->setActiveMenu('admin/module/events');
        parent::__construct();
    }

    public function index(Request $request)
    {
        $this->checkPermission('news_manage_others');

        $catlist = new EventsCategory;
        if ($catename = $request->query('s')) {
            $catlist = $catlist->where('name', 'LIKE', '%' . $catename . '%');
        }
        $catlist = $catlist->orderby('name', 'asc');
        $rows = $catlist->get();

        $data = [
            'rows'        => $rows->toTree(),
            'row'         => new EventsCategory(),
            'breadcrumbs' => [
                [
                    'name' => __('Events'),
                    'url'  => 'admin/module/events'
                ],
                [
                    'name'  => __('Category'),
                    'class' => 'active'
                ],
            ],
            'translation'=>new EventsCategoryTranslation()
        ];
        return view('Events::admin.category.index', $data);
    }

    public function edit(Request $request, $id)
    {
        $this->checkPermission('news_manage_others');
        $row = EventsCategory::find($id);

        $translation = $row->translateOrOrigin($request->query('lang'));

        if (empty($row)) {
            return redirect('admin/module/events/category');
        }
        $data = [
            'row'     => $row,
            'translation'     => $translation,
            'parents' => EventsCategory::get()->toTree(),
            'enable_multi_lang'=>true
        ];
        return view('Events::admin.category.detail', $data);
    }

    public function store(Request $request, $id){
        $this->checkPermission('news_manage_others');

        if($id>0){
            $row = EventsCategory::find($id);
            if (empty($row)) {
                return redirect(route('events.admin.category.index'));
            }
        }else{
            $row = new EventsCategory();
            $row->status = "publish";
        }

        $row->fill($request->input());
        $res = $row->saveOriginOrTranslation($request->input('lang'));

        if ($res) {
            if($id > 0 ){
                return back()->with('success',  __('Category updated') );
            }else{
                return redirect(route('events.admin.category.index'))->with('success', __('Category created') );
            }
        }
    }

    public function bulkEdit(Request $request)
    {
        $this->checkPermission('news_manage_others');
        $ids = $request->input('ids');
        $action = $request->input('action');
        if (empty($ids) or !is_array($ids)) {
            return redirect()->back()->with('error', __('Please select at least 1 item!'));
        }
        if (empty($action)) {
            return redirect()->back()->with('error', __('Please select an Action!'));
        }
        if ($action == 'delete') {
            foreach ($ids as $id) {
                $query = EventsCategory::where("id", $id)->first();
                if(!empty($query)){
                    $query->delete();
                }
            }
        }
        return redirect()->back()->with('success', __('Update success!'));
    }

    public function getForSelect2(Request $request)
    {
        $pre_selected = $request->query('pre_selected');
        $selected = $request->query('selected');

        if($pre_selected && $selected){
            $item = EventsCategory::find($selected);
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
        $query = EventsCategory::select('id', 'name as text')->where("status","publish");
        if ($q) {
            $query->where('name', 'like', '%' . $q . '%');
        }
        $res = $query->orderBy('id', 'desc')->limit(20)->get();
        return response()->json([
            'results' => $res
        ]);
    }
}
