<div class="row">
    <div class="col-sm-4">
        <h3 class="form-group-title">{{__("Page List")}}</h3>
        <p class="form-group-desc">{{__('Config page list events of your website')}}</p>
    </div>
    <div class="col-sm-8">
        <div class="panel">
            <div class="panel-body">
                <div class="form-group">
                    <label class="" >{{__("Title Page")}}</label>
                    <div class="form-controls">
                        <input type="text" name="events_page_list_title" value="{{setting_item_with_lang('events_page_list_title',request()->query('lang'),$settings['events_page_list_title'] ?? '')}}" class="form-control">
                    </div>
                </div>
                @if(is_default_lang())
                <div class="form-group">
                    <label class="" >{{__("Banner Page")}}</label>
                    <div class="form-controls form-group-image">
                        {!! \Modules\Media\Helpers\FileHelper::fieldUpload('events_page_list_banner',$settings['events_page_list_banner'] ?? "") !!}
                    </div>
                </div>
                @endif
                <div class="form-group">
                    <label class="" >{{__("SEO Options")}}</label>
                    <ul class="nav nav-tabs">
                        <li class="nav-item">
                            <a class="nav-link active" data-toggle="tab" href="#seo_1">{{__("General Options")}}</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#seo_2">{{__("Share Facebook")}}</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#seo_3">{{__("Share Twitter")}}</a>
                        </li>
                    </ul>
                    <div class="tab-content" >
                        <div class="tab-pane active" id="seo_1">
                            <div class="form-group" >
                                <label class="control-label">{{__("Seo Title")}}</label>
                                <input type="text" name="events_page_list_seo_title" class="form-control" placeholder="{{__("Enter title...")}}" value="{{ setting_item_with_lang('events_page_list_seo_title',request()->query('lang'),$settings['events_page_list_seo_title'] ?? "")}}">
                            </div>
                            <div class="form-group">
                                <label class="control-label">{{__("Seo Description")}}</label>
                                <input type="text" name="events_page_list_seo_desc" class="form-control" placeholder="{{__("Enter description...")}}" value="{{setting_item_with_lang('events_page_list_seo_desc',request()->query('lang'),$settings['events_page_list_seo_desc'] ?? "")}}">
                            </div>
                            @if(is_default_lang())
                            <div class="form-group form-group-image">
                                <label class="control-label">{{__("Featured Image")}}</label>
                                {!! \Modules\Media\Helpers\FileHelper::fieldUpload('events_page_list_seo_image', $settings['events_page_list_seo_image'] ?? "" ) !!}
                            </div>
                            @endif
                        </div>
                        @php $seo_share = !empty($settings['events_page_list_seo_share']) ? json_decode($settings['events_page_list_seo_share'],true): false;
                        $seo_share = setting_item_with_lang('events_page_list_seo_share',request()->query('lang'),$seo_share)
                        @endphp
                        <div class="tab-pane" id="seo_2">
                            <div class="form-group">
                                <label class="control-label">{{__("Facebook Title")}}</label>
                                <input type="text" name="events_page_list_seo_share[facebook][title]" class="form-control" placeholder="{{__("Enter title...")}}" value="{{$seo_share['facebook']['title'] ?? "" }}">
                            </div>
                            <div class="form-group">
                                <label class="control-label">{{__("Facebook Description")}}</label>
                                <input type="text" name="events_page_list_seo_share[facebook][desc]" class="form-control" placeholder="{{__("Enter description...")}}" value="{{$seo_share['facebook']['desc'] ?? "" }}">
                            </div>
                            @if(is_default_lang())
                            <div class="form-group form-group-image">
                                <label class="control-label">{{__("Facebook Image")}}</label>
                                {!! \Modules\Media\Helpers\FileHelper::fieldUpload('events_page_list_seo_share[facebook][image]',$seo_share['facebook']['image'] ?? "" ) !!}
                            </div>
                            @endif
                        </div>
                        <div class="tab-pane" id="seo_3">
                            <div class="form-group">
                                <label class="control-label">{{__("Twitter Title")}}</label>
                                <input type="text" name="events_page_list_seo_share[twitter][title]" class="form-control" placeholder="{{__("Enter title...")}}" value="{{$seo_share['twitter']['title'] ?? "" }}">
                            </div>
                            <div class="form-group">
                                <label class="control-label">{{__("Twitter Description")}}</label>
                                <input type="text" name="events_page_list_seo_share[twitter][desc]" class="form-control" placeholder="{{__("Enter description...")}}" value="{{$seo_share['twitter']['title'] ?? "" }}">
                            </div>
                            @if(is_default_lang())
                            <div class="form-group form-group-image">
                                <label class="control-label">{{__("Twitter Image")}}</label>
                                {!! \Modules\Media\Helpers\FileHelper::fieldUpload('events_page_list_seo_share[twitter][image]', $seo_share['twitter']['image'] ?? "" ) !!}
                            </div>
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>