<?php
namespace Modules\Template\Blocks;

use Modules\Template\Blocks\BaseBlock;
use Modules\Location\Models\Location;
use Modules\Media\Helpers\FileHelper;

class Banner extends BaseBlock
{
    function __construct()
    {
        $list_service = [];
        
        $this->setOptions([
            'settings' => [
                [
                    'id'    => 'bg_image',
                    'type'  => 'uploader',
                    'label' => __('Background Image Uploader')
                ],
            ]
        ]);
        
    }

    public function getName()
    {
        return __('Banner');
    }

    public function content($model = [])
    {
        $model['bg_image_url'] = FileHelper::url($model['bg_image'], 'full') ?? "";
        return view('Template::frontend.blocks.banner.index', $model);
    }
}