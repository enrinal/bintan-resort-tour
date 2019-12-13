<?php
namespace Modules\Events\Controllers;

use Illuminate\Http\Request;
use Modules\FrontendController;
use Modules\Language\Models\Language;
use Modules\Events\Models\Events;
use Modules\Events\Models\EventsCategory;
use Modules\Events\Models\EventsTranslation;
use Modules\Events\Models\Tag;

class EventsController extends FrontendController
{
    public function __construct()
    {
        parent::__construct();
    }

    public function index(Request $request)
    {
        $model_Events = Events::query()->select("core_events.*");
        $model_Events->where("core_events.status", "publish")->orderBy('core_events.id', 'desc');
        if (!empty($search = $request->input("s"))) {
            $model_Events->where(function($query) use ($search) {
                $query->where('core_events.title', 'LIKE', '%' . $search . '%');
                $query->orWhere('core_events.content', 'LIKE', '%' . $search . '%');
            });

            if( setting_item('site_enable_multi_lang') && setting_item('site_locale') != app_get_locale() ){
                $model_Events->leftJoin('core_events_translations', function ($join) use ($search) {
                    $join->on('core_events.id', '=', 'core_events_translations.origin_id');
                });
                $model_Events->orWhere(function($query) use ($search) {
                    $query->where('core_events_translations.title', 'LIKE', '%' . $search . '%');
                    $query->orWhere('core_events_translations.content', 'LIKE', '%' . $search . '%');
                });
            }

            $title_page = __('Search results : ":s"', ["s" => $search]);
        }
        $data = [
            'rows'              => $model_Events->with("getAuthor")->with('translations')->with("getCategory")->paginate(5),
            'model_category'    => EventsCategory::query()->where("status", "publish"),
            'model_tag'         => Tag::query(),
            'model_events'        => Events::query()->where("status", "publish"),
            'custom_title_page' => $title_page ?? "",
            'breadcrumbs'       => [
                [
                    'name'  => __('Events'),
                    'url'  => route('events.index'),
                    'class' => 'active'
                ],
            ],
            "seo_meta" => Events::getSeoMetaForPageList(),
            "languages"=>Language::getActive(false),
            "locale"=> app_get_locale()
        ];
        return view('Events::frontend.index', $data);
    }

    public function detail(Request $request, $slug)
    {
        $row = Events::where('slug', $slug)->where('status','publish')->first();
        if (empty($row)) {
            return redirect('/');
        }
        $translation = $row->translateOrOrigin(app()->getLocale());

        $data = [
            'row'               => $row,
            'translation'       => $translation,
            'model_category'    => EventsCategory::where("status", "publish"),
            'model_tag'         => Tag::query(),
            'model_events'        => Events::where("status", "publish"),
            'custom_title_page' => $title_page ?? "",
            'breadcrumbs'       => [
                [
                    'name' => __('Events'),
                    'url'  => route('events.index')
                ],
                [
                    'name'  => $translation->title,
                    'class' => 'active'
                ],
            ],
            'seo_meta'  => $row->getSeoMetaWithTranslation(app()->getLocale(),$translation),
        ];
        $this->setActiveMenu($row);
        return view('Events::frontend.detail', $data);
    }
}
