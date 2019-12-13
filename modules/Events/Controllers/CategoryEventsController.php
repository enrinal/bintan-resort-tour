<?php
namespace Modules\Events\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Modules\FrontendController;
use Modules\Events\Models\EventsCategory;
use Modules\Events\Models\Tag;
use Modules\Events\Models\Events;

class CategoryEventsController extends FrontendController
{
    public function __construct()
    {
        parent::__construct();
    }

    public function index(Request $request, $slug)
    {
        $cat = EventsCategory::where('slug', $slug)->first();
        if (empty($cat)) {
            return redirect('/events');
        }
        $listEvents = Events::query();
        $listEvents->select("core_events.*")
                ->join('core_events_category', function ($join) use($cat) {
                    $join->on('core_events_category.id', '=', 'core_events.cat_id')
                         ->where('core_events_category._lft', '>=', $cat->_lft)
                         ->where('core_events_category._rgt', '<=', $cat->_rgt);
                })
                ->where("core_events.status", "publish")
                ->groupBy('core_events.id');


        $translation = $cat->translateOrOrigin(app()->getLocale());

        $data = [
            'rows'           => $listEvents->with("getAuthor")->with("getCategory")->paginate(5),
            'model_category'    => EventsCategory::where("status", "publish"),
            'model_tag'         => Tag::query(),
            'model_events'        => Events::where("status", "publish"),
            'breadcrumbs'    => [
                [
                    'name' => __('Events'),
                    'url'  => route('events.index')
                ],
                [
                    'name'  => $translation->name,
                    'class' => 'active'
                ],
            ],
            'page_title'=>$translation->name,
            'seo_meta'  => $cat->getSeoMetaWithTranslation(app()->getLocale(),$translation),
            'translation'=>$translation
        ];
        return view('Events::frontend.index', $data);
    }
}