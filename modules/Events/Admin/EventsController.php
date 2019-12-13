<?php
namespace Modules\Events\Admin;

use Illuminate\Http\Request;
use Modules\AdminController;
use Modules\Language\Models\Language;
use Modules\Events\Models\EventsCategory;
use Modules\Events\Models\Events;
use Modules\Events\Models\EventsTranslation;

class EventsController extends AdminController
{
    public function __construct()
    {
        $this->setActiveMenu('admin/module/events');
        parent::__construct();
    }

    public function index(Request $request)
    {
        $this->checkPermission('news_view');
        $dataEvents = Events::query()->orderBy('id', 'desc');
        $post_name = $request->query('s');
        $cate = $request->query('cate_id');
        if ($cate) {
           $dataEvents->where('cat_id', $cate);
        }
        if ($post_name) {
            $dataEvents->where('title', 'LIKE', '%' . $post_name . '%');
            $dataEvents->orderBy('title', 'asc');
        }


        $this->filterLang($dataEvents);

        $data = [
            'rows'        => $dataEvents->with("getAuthor")->with("getCategory")->paginate(20),
            'categories'  => EventsCategory::get(),
            'breadcrumbs' => [
                [
                    'name' => __('Events'),
                    'url'  => 'admin/module/events'
                ],
                [
                    'name'  => __('All'),
                    'class' => 'active'
                ],
            ],
            "languages"=>Language::getActive(false),
            "locale"=>\App::getLocale(),
            'page_title'=>__("Events Management")
        ];
        return view('Events::admin.events.index', $data);
    }

    public function create(Request $request)
    {
        $this->checkPermission('news_create');
        $row = new Events();
        $row->fill([
            'status' => 'publish',
        ]);
        $data = [
            'categories'        => EventsCategory::get()->toTree(),
            'row'         => $row,
            'breadcrumbs' => [
                [
                    'name' => __('Events'),
                    'url'  => 'admin/module/events'
                ],
                [
                    'name'  => __('Add Events'),
                    'class' => 'active'
                ],
            ],
            'translation'=>new EventsTranslation()
        ];
        return view('Events::admin.events.detail', $data);
    }

    public function edit(Request $request, $id)
    {
        $this->checkPermission('news_update');

        $row = Events::find($id);

        $translation = $row->translateOrOrigin($request->query('lang'));

        if (empty($row)) {
            return redirect('admin/module/events');
        }

        $data = [
            'row'  => $row,
            'translation'  => $translation,
            'categories' => EventsCategory::get()->toTree(),
            'tags' => $row->getTags(),
            'enable_multi_lang'=>true
        ];
        return view('Events::admin.events.detail', $data);
    }

    public function store(Request $request, $id){
        if($id>0){
            $this->checkPermission('news_update');
            $row = Events::find($id);
            if (empty($row)) {
                return redirect(route('events.admin.index'));
            }
        }else{
            $this->checkPermission('news_create');
            $row = new Events();
            $row->status = "publish";
        }

        $row->fill($request->input());
        $res = $row->saveOriginOrTranslation($request->query('lang'),true);

        if ($res) {
            if(is_default_lang($request->query('lang'))){
                $row->saveTag($request->input('tag_name'), $request->input('tag_ids'));
            }
            if($id > 0 ){
                return back()->with('success',  __('Events updated') );
            }else{
                return redirect(route('events.admin.edit',$row->id))->with('success', __('Events created') );
            }
        }
    }

    public function bulkEdit(Request $request)
    {
        $this->checkPermission('news_update');
        $ids = $request->input('ids');
        $action = $request->input('action');
        if (empty($ids) or !is_array($ids)) {
            return redirect()->back()->with('error', __('No items selected!'));
        }
        if (empty($action)) {
            return redirect()->back()->with('error', __('Please select an action!'));
        }
        if ($action == "delete") {
            foreach ($ids as $id) {
                $query = Events::where("id", $id);
                if (!$this->hasPermission('news_manage_others')) {
                    $query->where("create_user", Auth::id());
                    $this->checkPermission('news_delete');
                }
                $query->first();
                if(!empty($query)){
                    $query->delete();
                }
            }
        } else {
            foreach ($ids as $id) {
                $query = Events::where("id", $id);
                if (!$this->hasPermission('news_manage_others')) {
                    $query->where("create_user", Auth::id());
                    $this->checkPermission('news_update');
                }
                $query->update(['status' => $action]);
            }
        }
        return redirect()->back()->with('success', __('Update success!'));
    }

    public function trans($id,$locale){
        $row = Events::find($id);

        if(empty($row)){
            return redirect()->back()->with("danger",__("Events does not exists"));
        }

        $translated = Events::query()->where('origin_id',$id)->where('lang',$locale)->first();
        if(!empty($translated)){
            redirect($translated->getEditUrl());
        }

        $language = Language::where('locale',$locale)->first();
        if(empty($language)){
            return redirect()->back()->with("danger",__("Language does not exists"));
        }

        $new = $row->replicate();

        if(!$row->origin_id){
            $new->origin_id = $row->id;
        }

        $new->lang = $locale;

        $new->save();


        return redirect($new->getEditUrl());
    }
}
