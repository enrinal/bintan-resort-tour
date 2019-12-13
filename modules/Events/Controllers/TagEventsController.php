<?php
namespace Modules\Events\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Modules\FrontendController;
use Modules\Events\Models\EventsCategory;
use Modules\Events\Models\Tag;
use Modules\Events\Models\Events;
use Modules\Events\Models\EventsTag;

class TagEventsController extends FrontendController
{
    public function __construct()
    {
        parent::__construct();
    }

    public function index(Request $request, $slug)
    {
        $tag = Tag::where('slug', $slug)->first();
        if (empty($tag)) {
            return redirect('/events');
        }
        $listEvents = Events::query();
        $listEvents->select(['core_events.*'])->join('core_events_tag', 'core_events_tag.events_id', '=', 'core_events.id')
            ->where('core_events_tag.tag_id', $tag->id)
            ->with(['getAuthor','translations'])->with("getCategory");

        $translation = $tag->translateOrOrigin(app()->getLocale());

        $data = [
            'rows'           => $listEvents->paginate(5),
            'model_category' => EventsCategory::where("status", "publish"),
            'model_tag'      => Tag::query(),
            'model_events'     => Events::where("status", "publish"),
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
            'seo_meta'  => $tag->getSeoMetaWithTranslation(app()->getLocale(),$translation),
            'translation'=>$translation,
            'page_title'=>$translation->name ?? ''
        ];
        return view('Events::frontend.index', $data);
    }
}