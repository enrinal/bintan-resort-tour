<?php
namespace Modules\Events\Blocks;

use Modules\Template\Blocks\BaseBlock;
use Modules\Events\Models\Events;
use Modules\Events\Models\EventsCategory;

class ListEvents extends BaseBlock
{
    function __construct()
    {
        $this->setOptions([
            'settings' => [
                [
                    'id'        => 'title',
                    'type'      => 'input',
                    'inputType' => 'text',
                    'label'     => __('Title')
                ],
                [
                    'id'        => 'desc',
                    'type'      => 'input',
                    'inputType' => 'text',
                    'label'     => __('Desc')
                ],
                [
                    'id'        => 'number',
                    'type'      => 'input',
                    'inputType' => 'number',
                    'label'     => __('Number Item')
                ],
                [
                    'id'      => 'category_id',
                    'type'    => 'select2',
                    'label'   => __('Filter by Category'),
                    'select2' => [
                        'ajax'  => [
                            'url'      => url('/admin/module/events/category/getForSelect2'),
                            'dataType' => 'json'
                        ],
                        'width' => '100%',
                        'allowClear' => 'true',
                        'placeholder' => __('-- Select --')
                    ],
                    'pre_selected'=>url('/admin/module/events/category/getForSelect2?pre_selected=1')
                ],
                [
                    'id'            => 'order',
                    'type'          => 'radios',
                    'label'         => __('Order'),
                    'values'        => [
                        [
                            'value'   => 'id',
                            'name' => __("Date Create")
                        ],
                        [
                            'value'   => 'title',
                            'name' => __("Title")
                        ],
                    ]
                ],
                [
                    'id'            => 'order_by',
                    'type'          => 'radios',
                    'label'         => __('Order By'),
                    'values'        => [
                        [
                            'value'   => 'asc',
                            'name' => __("ASC")
                        ],
                        [
                            'value'   => 'desc',
                            'name' => __("DESC")
                        ],
                    ]
                ]
            ]
        ]);
    }

    public function getName()
    {
        return __('Events: List Items');
    }

    public function content($model = [])
    {
        $model_Tour = Events::select("core_events.*")->with(['translations']);
        if(empty($model['order'])) $model['order'] = "id";
        if(empty($model['order_by'])) $model['order_by'] = "desc";
        if(empty($model['number'])) $model['number'] = 5;
        if (!empty($model['category_id'])) {
            $category_ids = [$model['category_id']];
            $list_cat = EventsCategory::whereIn('id', $category_ids)->where("status","publish")->get();
            if(!empty($list_cat)){
                $where_left_right = [];
                foreach ($list_cat as $cat){
                    $where_left_right[] = " ( core_events_category._lft >= {$cat->_lft} AND core_events_category._rgt <= {$cat->_rgt} ) ";
                }
                $sql_where_join = " ( ".implode("OR" , $where_left_right)." )  ";
                $model_Tour
                    ->join('core_events_category', function ($join) use($sql_where_join) {
                        $join->on('core_events_category.id', '=', 'core_events.cat_id')
                            ->WhereRaw($sql_where_join);
                    });
            }
        }

        $model_Tour->orderBy("core_events.".$model['order'], $model['order_by']);
        $model_Tour->where("core_events.status", "publish");
        $model_Tour->groupBy("core_events.id");
        $list = $model_Tour->limit($model['number'])->get();
        $data = [
            'rows'       => $list,
            'title'      => $model['title'] ?? "",
            'desc'      => $model['desc'] ?? "",
        ];
        return view('Events::frontend.blocks.list-news.index', $data);
    }
}
