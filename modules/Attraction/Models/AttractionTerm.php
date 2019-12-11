<?php
namespace Modules\Attraction\Models;

use App\BaseModel;

class AttractionTerm extends BaseModel
{
    protected $table = 'bravo_attraction_term';
    protected $fillable = [
        'term_id',
        'attraction_id'
    ];
}