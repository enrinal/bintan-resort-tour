<?php
namespace Modules\Attraction\Models;

use App\BaseModel;

class AttractionCategoryTranslation extends BaseModel
{
    protected $table = 'bravo_attraction_category_translations';
    protected $fillable = [
        'name',
        'content',
    ];
    protected $cleanFields = [
        'content'
    ];
}