<?php
/**
 * Created by PhpStorm.
 * User: Admin
 * Date: 7/2/2019
 * Time: 10:26 AM
 */
namespace  Modules\Attraction;

use Modules\Core\Abstracts\BaseSettingsClass;

class SettingClass extends BaseSettingsClass
{
    public static function getSettingPages()
    {
        return [
            [
                'id'   => 'attraction',
                'title' => __("Attraction Settings"),
                'position'=>20,
                'view'=>"Attraction::admin.settings.attraction",
                "keys"=>[
                    'attraction_disable',
                    'attraction_page_search_title',
                    'attraction_page_search_banner',
                    'attraction_layout_search',
                    'attraction_location_search_style',
                    'attraction_enable_review',
                    'attraction_review_approved',
                    'attraction_enable_review_after_booking',
                    'attraction_review_number_per_page',
                    'attraction_review_stats',
                    'attraction_page_list_seo_title',
                    'attraction_page_list_seo_desc',
                    'attraction_page_list_seo_image',
                    'attraction_page_list_seo_share',
                    'attraction_booking_buyer_fees',

                    'attraction_vendor_create_service_must_approved_by_admin',
                    'attraction_allow_vendor_can_change_their_booking_status',
                ],
                'html_keys'=>[

                ]
            ]
        ];
    }
}