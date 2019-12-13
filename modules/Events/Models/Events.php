<?php
namespace Modules\Events\Models;

use App\BaseModel;
use Illuminate\Database\Eloquent\SoftDeletes;
use Modules\Core\Models\SEO;

class Events extends BaseModel
{
    use SoftDeletes;
    protected $table = 'core_events';
    protected $fillable = [
        'title',
        'content',
        'status',
        'slug',
        'cat_id',
        'image_id'
    ];
    protected $slugField     = 'slug';
    protected $slugFromField = 'title';
    protected $seo_type = 'events';

    public function getDetailUrlAttribute()
    {
        return url('events-' . $this->slug);
    }

    public function geCategorylink()
    {
        return url(app_get_locale().'/events/category/' . $this->slug);
    }

    public function cat()
    {
        return $this->belongsTo('Modules\Events\Models\EventsCategory');
    }

    public static function getAll()
    {
        return self::with('cat')->get();
    }

    public function getDetailUrl($locale = false)
    {
        return url(app_get_locale(false,false,'/'). config('events.events_route_prefix')."/".$this->slug);
    }

    public function getCategory()
    {
        $catename = $this->belongsTo("Modules\Events\Models\EventsCategory", "cat_id", "id");
        return $catename;
    }

    public function getTags()
    {
        $tags = EventsTag::where('events_id', $this->id)->get();
        $tag_ids = [];
        if (!empty($tags)) {
            foreach ($tags as $key => $value) {
                $tag_ids[] = $value->tag_id;
            }
        }
        return Tag::whereIn('id', $tag_ids)->with('translations')->get();
    }

    public static function searchForMenu($q = false)
    {
        $query = static::select('id', 'title as name');
        if (strlen($q)) {

            $query->where('title', 'like', "%" . $q . "%");
        }
        $a = $query->limit(10)->get();
        return $a;
    }

    public function saveTag($tags_name, $tag_ids)
    {

        if (empty($tag_ids))
            $tag_ids = [];
        $tag_ids = array_merge(Tag::saveTagByName($tags_name), $tag_ids);
        $tag_ids = array_filter(array_unique($tag_ids));
        // Delete unused
        EventsTag::whereNotIn('tag_id', $tag_ids)->where('events_id', $this->id)->delete();
        //Add
        EventsTag::addTag($tag_ids, $this->id);
    }

    static public function getSeoMetaForPageList()
    {
        $meta['seo_title'] = setting_item_with_lang("events_page_list_seo_title", false,null) ?? setting_item_with_lang("events_page_list_title",false, null) ?? __("Events");
        $meta['seo_desc'] = setting_item_with_lang("events_page_list_seo_desc");
        $meta['seo_image'] = setting_item("events_page_list_seo_image", null) ?? setting_item("events_page_list_banner", null);
        $meta['seo_share'] = setting_item_with_lang("events_page_list_seo_share");
        $meta['full_url'] = url(config('events.events_route_prefix'));
        return $meta;
    }

    public function getEditUrl()
    {
        $lang = $this->lang ?? setting_item("site_locale");
        return route('events.admin.edit',['id'=>$this->id , "lang"=> $lang]);
    }

}
