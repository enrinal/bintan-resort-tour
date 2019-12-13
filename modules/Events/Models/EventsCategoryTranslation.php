<?php
/**
 * Created by PhpStorm.
 * User: Admin
 * Date: 7/16/2019
 * Time: 2:05 PM
 */
namespace Modules\Events\Models;

use App\BaseModel;

class EventsCategoryTranslation extends BaseModel
{
    protected $table = 'core_events_category_translations';
    protected $fillable = ['name', 'content'];
    protected $seo_type = 'events_cat_translation';
    protected $cleanFields = [
        'content'
    ];
}