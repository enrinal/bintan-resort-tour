<?php
namespace Modules\Attraction\Models;

use App\BaseModel;

class AttractionDate extends BaseModel
{
    protected $table = 'bravo_attraction_dates';
    protected $attractionMetaClass;

    protected $casts = [
        'person_types'=>'array'
    ];

    public function __construct()
    {
        parent::__construct();
        $this->attractionMetaClass = AttractionMeta::class;
    }

    public static function getDatesInRanges($date,$target_id){
        return static::query()->where([
            ['start_date','>=',$date],
            ['end_date','<=',$date],
            ['target_id','=',$target_id],
        ])->first();
    }
    public function saveMeta(\Illuminate\Http\Request $request)
    {
        $locale = $request->input('lang');
        $meta = $this->attractionMetaClass::where('attraction_date_id', $this->id)->first();
        if (!$meta) {
            $meta = new $this->attractionMetaClass();
            $meta->attraction_date_id = $this->id;
        }
        return $meta->saveMetaOriginOrTranslation($request->input() , $locale);
    }
}
