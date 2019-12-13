<?php
namespace Modules\Events\Models;

use App\BaseModel;
use Kalnoy\Nestedset\NodeTrait;
use Illuminate\Database\Eloquent\SoftDeletes;
use Modules\Core\Models\SEO;

class EventsCategory extends BaseModel
{
    use SoftDeletes;
    use NodeTrait;
    protected $table = 'core_events_category';
    protected $fillable = [
        'name',
        'content',
        'status',
        'parent_id'
    ];
    protected $slugField     = 'slug';
    protected $slugFromField = 'name';
    protected $seo_type = 'events_category';

    public static function getModelName()
    {
        return __("Events Category");
    }

    public function filterbyCat($id)
    {
        $posts = Events::where('events_id', $this->id)->get();
        return $posts;
    }

    public static function searchForMenu($q = false)
    {
        $query = static::select('id', 'name');
        if (strlen($q)) {

            $query->where('title', 'name', "%" . $q . "%");
        }
        $a = $query->limit(10)->get();
        return $a;
    }

    public function getDetailUrl($locale = false)
    {
        $locale = $locale ? $locale : app()->getLocale();

        return url(( $locale ? $locale.'/' : '').config('events.events_route_prefix')."/".config('events.events_category_route_prefix')."/".$this->slug);
    }

}