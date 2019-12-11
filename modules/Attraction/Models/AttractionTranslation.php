<?php
namespace Modules\Attraction\Models;

use App\BaseModel;

class AttractionTranslation extends BaseModel
{
    protected $table = 'bravo_attraction_translations';
    protected $fillable = [
        'title',
        'content',
        'short_desc',
        'address',
        'faqs',
        'include',
        'exclude',
        'itinerary',
    ];
    protected $slugField     = false;
    protected $seo_type = 'attraction_translation';
    protected $cleanFields = [
        'content'
    ];
    protected $casts = [
        'faqs' => 'array',
        'include' => 'array',
        'exclude' => 'array',
        'itinerary' => 'array',
    ];
    public function getSeoType(){
        return $this->seo_type;
    }
}