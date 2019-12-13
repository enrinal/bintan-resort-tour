<?php
namespace Modules\Events\Models;

use App\BaseModel;
use Illuminate\Database\Eloquent\SoftDeletes;

class EventsTag extends BaseModel
{
    use SoftDeletes;
    protected $table = 'core_events_tag';
    protected $fillable = [
        'events_id',
        'tag_id'
    ];

    public static function getModelName()
    {
        return __("Events Tag");
    }

    public static function searchForMenu($q = false)
    {

    }

    public function tag()
    {
        return $this->belongsTo('Modules\Events\Models\EventsTag');
    }

    public static function getAll()
    {
        return self::with('tag')->get();
    }

    public static function addTag($tags_ids, $events_id)
    {
        if (!empty($tags_ids)) {
            foreach ($tags_ids as $tag_id) {
                $find = parent::where('events_id', $events_id)->where('tag_id', $tag_id)->first();
                if (empty($find)) {

                    $a = new self();
                    $a->events_id = $events_id;
                    $a->tag_id = $tag_id;
                    $a->save();
                }
            }
        }
    }

    public static function getTags(){

        $query = Tag::query()->with('translations');

        $query->select(['core_tags.*']);

        return $query
            ->join('core_events_tag as nt','nt.tag_id','=','core_tags.id')->orderByRaw('RAND()')
            ->groupBy('core_tags.id')
            ->get(10);

    }
}
