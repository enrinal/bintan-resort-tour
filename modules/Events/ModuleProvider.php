<?php
namespace Modules\Events;

use Illuminate\Support\ServiceProvider;
use Modules\ModuleServiceProvider;

class ModuleProvider extends ModuleServiceProvider
{

    public function boot(){

        $this->publishes([
            __DIR__.'/Config/config.php' => config_path('news.php'),
        ]);

    }
    /**
     * Register bindings in the container.
     *
     * @return void
     */
    public function register()
    {
        $this->mergeConfigFrom(
            __DIR__.'/Config/config.php', 'events'
        );

        $this->app->register(RouteServiceProvider::class);
    }

    public static function getAdminMenu()
    {
        return [
            'events'=>[
                "position"=>10,
                'url'        => 'admin/module/events',
                'title'      => __("Events"),
                'icon'       => 'fa fa-calendar',
                'permission' => 'news_view',
                'children'   => [
                    'events_view'=>[
                        'url'        => 'admin/module/events',
                        'title'      => __("All Events"),
                        'permission' => 'news_view',
                    ],
                    'events_create'=>[
                        'url'        => 'admin/module/events/create',
                        'title'      => __("Add Events"),
                        'permission' => 'news_create',
                    ],
                    // 'events_categoty'=>[
                    //     'url'        => 'admin/module/events/category',
                    //     'title'      => __("Categories"),
                    //     'permission' => 'news_create',
                    // ],
                    // 'events_tag'=>[
                    //     'url'        => 'admin/module/events/tag',
                    //     'title'      => __("Tags"),
                    //     'permission' => 'news_create',
                    // ],
                ]
            ],
        ];
    }

    public static function getTemplateBlocks(){
        return [
            'list_events'=>"\\Modules\\Events\\Blocks\\ListNews",
        ];
    }
}