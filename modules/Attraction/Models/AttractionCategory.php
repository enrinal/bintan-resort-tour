<?php
namespace Modules\Attraction\Models;

use App\BaseModel;
use Kalnoy\Nestedset\NodeTrait;
use Illuminate\Database\Eloquent\SoftDeletes;

class AttractionCategory extends BaseModel
{
    use SoftDeletes;
    use NodeTrait;
    protected $table = 'bravo_attraction_category';
    protected $fillable = [
        'name',
        'content',
        'slug',
        'status',
        'parent_id'
    ];
    protected $slugField     = 'slug';
    protected $slugFromField = 'name';

    public static function getModelName()
    {
        return __("Attraction Category");
    }

    public static function searchForMenu($q = false)
    {
        $query = static::select('id', 'name');
        if (strlen($q)) {
            $query->where('name', 'like', "%" . $q . "%");
        }
        $a = $query->limit(10)->get();
        return $a;
    }
    public function getDetailUrl(){
        return url(app_get_locale(false, false, '/') . config('attraction.attraction_route_prefix').'?cat_id[]='.$this->id);
    }
}