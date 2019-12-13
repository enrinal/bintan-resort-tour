<?php
/**
 * Created by PhpStorm.
 * User: Admin
 * Date: 7/16/2019
 * Time: 2:05 PM
 */
namespace Modules\Events\Models;

use App\BaseModel;

class EventsTranslation extends BaseModel
{
    protected $table = 'core_events_translations';
    protected $fillable = ['title', 'content'];
    protected $seo_type = 'events_translation';
    protected $cleanFields = [
        'content'
    ];
}