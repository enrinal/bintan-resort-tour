<?php
namespace Modules\Attraction;

use Illuminate\Support\ServiceProvider;
use Modules\ModuleServiceProvider;
use Modules\Attraction\Models\Attraction;

class ModuleProvider extends ModuleServiceProvider
{
    public function boot()
    {
        $this->loadMigrationsFrom(__DIR__ . '/Migrations');
    }

    /**
     * Register bindings in the container.
     *
     * @return void
     */
    public function register()
    {
        $this->app->register(RouterServiceProvider::class);
    }

    public static function getBookableServices()
    {
        return [
            'attraction' => Attraction::class,
        ];
    }

    public static function getAdminMenu()
    {
        $res = [];
        if(Attraction::isEnable()){
            $res['attraction'] = [
                "position"=>40,
                'url'        => 'admin/module/attraction',
                'title'      => __("Attraction"),
                'icon'       => 'icon ion-md-flame',
                'permission' => 'tour_view',
                'children'   => [
                    'tour_view'=>[
                        'url'        => 'admin/module/attraction',
                        'title'      => __('All attractions'),
                        'permission' => 'tour_view',
                    ],
                    'tour_create'=>[
                        'url'        => 'admin/module/attraction/create',
                        'title'      => __("Add attraction"),
                        'permission' => 'tour_create',
                    ],
                    'attraction_category'=>[
                        'url'        => 'admin/module/attraction/category',
                        'title'      => __('Categories'),
                        'permission' => 'tour_manage_others',
                    ],
                    'attraction_attribute'=>[
                        'url'        => 'admin/module/attraction/attribute',
                        'title'      => __('Attributes'),
                        'permission' => 'tour_manage_attributes',
                    ],
                    'attraction_availability'=>[
                        'url'        => 'admin/module/attraction/availability',
                        'title'      => __('Availability'),
                        'permission' => 'tour_create',
                    ],
                    'attraction_booking'=>[
                        'url'        => 'admin/module/attraction/booking',
                        'title'      => __('Booking Calendar'),
                        'permission' => 'tour_create',
                    ],
                ]
            ];
        }
        return $res;
    }


    public static function getUserMenu()
    {
        $res = [];
        if(Attraction::isEnable()){
            $res['attraction'] = [
                'url'   => route('attraction.vendor.index'),
                'title'      => __("Manage attraction"),
                'icon'       => Attraction::getServiceIconFeatured(),
                'permission' => 'tour_view',
                'position'   => 30,
                'children'   => [
                    [
                        'url'   => route('attraction.vendor.index'),
                        'title' => "All Attractions",
                    ],
                    [
                        'url'        => route('attraction.vendor.create'),
                        'title'      => "Add Attraction",
                        'permission' => 'tour_create',
                    ],
                    [
                        'url'        => route('attraction.vendor.availability.index'),
                        'title'      => __("Availability"),
                        'permission' => 'tour_create',
                    ],
                    [
                        'url'        => route('attraction.vendor.booking_report'),
                        'title'      => "Booking Report",
                        'permission' => 'tour_view',
                    ],
                ]
            ];
        }
        return $res;
    }

    public static function getMenuBuilderTypes()
    {
        if(!Attraction::isEnable()) return [];

        return [
            [
                'class' => \Modules\Attraction\Models\Attraction::class,
                'name'  => __("Attraction"),
                'items' => \Modules\Attraction\Models\Attraction::searchForMenu(),
                'position'=>20
            ],
            [
                'class' => \Modules\Attraction\Models\AttractionCategory::class,
                'name'  => __("Attraction Category"),
                'items' => \Modules\Attraction\Models\AttractionCategory::searchForMenu(),
                'position'=>30
            ],
        ];
    }

    public static function getTemplateBlocks(){
        if(!Attraction::isEnable()) return [];

        return [
            'list_attractions'=>"\\Modules\\Attraction\\Blocks\\ListAttractions",
            'form_search_attraction'=>"\\Modules\\Attraction\\Blocks\\FormSearchAttraction",
        ];
    }
}
