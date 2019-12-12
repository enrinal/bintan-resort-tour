<?php
namespace Modules\Space;
use Modules\ModuleServiceProvider;
use Modules\Space\Models\Space;

class ModuleProvider extends ModuleServiceProvider
{

    public function boot(){

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

    public static function getAdminMenu()
    {
        if(!Space::isEnable()) return [];
        return [
            'space'=>[
                "position"=>41,
                'url'        => 'admin/module/space',
                'title'      => __('Space'),
                'icon'       => 'ion ion-md-home',
                'permission' => 'space_view',
                'children'   => [
                    'add'=>[
                        'url'        => 'admin/module/space',
                        'title'      => __('Bintan Apartement'),
                        'permission' => 'space_view',
                    ],
                    'attribute'=>[
                        'url'        => 'admin/module/space/attribute',
                        'title'      => __('Attributes'),
                        'permission' => 'space_manage_attributes',
                    ],
                    'availability'=>[
                        'url'        => 'admin/module/space/availability',
                        'title'      => __('Availability'),
                        'permission' => 'space_create',
                    ],

                ]
            ]
        ];
    }

    public static function getBookableServices()
    {
        return [
            'space'=>Space::class
        ];
    }

    public static function getMenuBuilderTypes()
    {
        if(!Space::isEnable()) return [];
        return [
            'space'=>[
                'class' => Space::class,
                'name'  => __("Spaces"),
                'items' => Space::searchForMenu(),
                'position'=>41
            ]
        ];
    }


    public static function getUserMenu()
    {
        if(!Space::isEnable()) return [];
        return [
            'space' => [
                'url'   => route('space.vendor.index'),
                'title'      => __("Manage Space"),
                'icon'       => Space::getServiceIconFeatured(),
                'position'   => 31,
                'permission' => 'space_view',
                'children' => [
                    [
                        'url'   => route('space.vendor.index'),
                        'title'  => __("All Spaces"),
                    ],
                    [
                        'url'   => route('space.vendor.create'),
                        'title'      => __("Add Space"),
                        'permission' => 'space_create',
                    ],
                    [
                        'url'        => route('space.vendor.availability.index'),
                        'title'      => __("Availability"),
                        'permission' => 'space_create',
                    ],
                    [
                        'url'   => route('space.vendor.booking_report'),
                        'title'      => __("Booking Report"),
                        'permission' => 'space_view',
                    ],
                ]
            ],
        ];
    }

    public static function getTemplateBlocks(){
        if(!Space::isEnable()) return [];
        return [
            'form_search_space'=>"\\Modules\\Space\\Blocks\\FormSearchSpace",
            'list_space'=>"\\Modules\\Space\\Blocks\\ListSpace",
            'space_term_featured_box'=>"\\Modules\\Space\\Blocks\\SpaceTermFeaturedBox",
        ];
    }
}
