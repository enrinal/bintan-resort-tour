<?php
namespace  Modules\Events;

use Modules\Core\Abstracts\BaseSettingsClass;

class SettingClass extends BaseSettingsClass
{
    public static function getSettingPages()
    {
        return [
            [
                'id'   => 'events',
                'title' => __("Events Settings"),
                'position'=>30,
                'view'=>"Events::admin.settings.events",
                "keys"=>[
                    'events_page_list_title',
                    'events_page_list_banner',
                    'events_sidebar',
                    'events_page_list_seo_title',
                    'events_page_list_seo_desc',
                    'events_page_list_seo_image',
                    'events_page_list_seo_share',
                ],
                'html_keys'=>[

                ]
            ]
        ];
    }
}