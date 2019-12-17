<div class="row">
    <div class="col-sm-4">
        <h3 class="form-group-title">{{__("Page Search")}}</h3>
        <p class="form-group-desc">{{__('Config page search of your website')}}</p>
    </div>
    <div class="col-sm-8">
        <div class="panel">
            <div class="panel-title"><strong>{{__("General Options")}}</strong></div>
            <div class="panel-body">
                <div class="form-group">
                    <label class="" >{{__("Title Page")}}</label>
                    <div class="form-controls">
                        <input type="text" name="car_page_search_title" value="{{setting_item_with_lang('car_page_search_title',request()->query('lang'))}}" class="form-control">
                    </div>
                </div>
                @if(is_default_lang())
                <div class="form-group">
                    <label class="" >{{__("Banner Page")}}</label>
                    <div class="form-controls form-group-image">
                        {!! \Modules\Media\Helpers\FileHelper::fieldUpload('car_page_search_banner',$settings['car_page_search_banner'] ?? "") !!}
                    </div>
                </div>
                <div class="form-group d-none">
                    <label class="" >{{__("Layout Search")}}</label>
                    <div class="form-controls">
                        <select name="car_layout_search" class="form-control" >
                            <option value="normal" {{ ($settings['car_layout_search'] ?? '') == 'normal' ? 'selected' : ''  }}>{{__("Normal Layout")}}</option>
                            <option value="map" {{($settings['car_layout_search'] ?? '') == 'map' ? 'selected' : ''  }}>{{__('Map Layout')}}</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="" >{{__("Location Search Style")}}</label>
                    <div class="form-controls">
                        <select name="car_location_search_style" class="form-control">
                            <option {{ ($settings['car_location_search_style'] ?? '') == 'normal' ? 'selected' : ''  }}      value="normal">{{__("Normal")}}</option>
                            <option {{ ($settings['car_location_search_style'] ?? '') == 'autocomplete' ? 'selected' : '' }} value="autocomplete">{{__('Autocomplete from locations')}}</option>
                        </select>
                    </div>
                </div>
                @endif
            </div>
        </div>
        @include('Car::admin.settings.map-search')
        <div class="panel">
            <div class="panel-title"><strong>{{__("SEO Options")}}</strong></div>
            <div class="panel-body">
                <div class="form-group">
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
                                <input type="text" name="car_page_list_seo_title" class="form-control" placeholder="{{__("Enter title...")}}" value="{{ setting_item_with_lang('car_page_list_seo_title',request()->query('lang'))}}">
                            </div>
                            <div class="form-group">
                                <label class="control-label">{{__("Seo Description")}}</label>
                                <input type="text" name="car_page_list_seo_desc" class="form-control" placeholder="{{__("Enter description...")}}" value="{{setting_item_with_lang('car_page_list_seo_desc',request()->query('lang'))}}">
                            </div>
                            @if(is_default_lang())
                                <div class="form-group form-group-image">
                                    <label class="control-label">{{__("Featured Image")}}</label>
                                    {!! \Modules\Media\Helpers\FileHelper::fieldUpload('car_page_list_seo_image', $settings['car_page_list_seo_image'] ?? "" ) !!}
                                </div>
                            @endif
                        </div>
                        @php
                            $seo_share = json_decode(setting_item_with_lang('car_page_list_seo_desc',request()->query('lang'),'[]'),true);
                        @endphp
                        <div class="tab-pane" id="seo_2">
                            <div class="form-group">
                                <label class="control-label">{{__("Facebook Title")}}</label>
                                <input type="text" name="car_page_list_seo_share[facebook][title]" class="form-control" placeholder="{{__("Enter title...")}}" value="{{$seo_share['facebook']['title'] ?? "" }}">
                            </div>
                            <div class="form-group">
                                <label class="control-label">{{__("Facebook Description")}}</label>
                                <input type="text" name="car_page_list_seo_share[facebook][desc]" class="form-control" placeholder="{{__("Enter description...")}}" value="{{$seo_share['facebook']['desc'] ?? "" }}">
                            </div>
                            @if(is_default_lang())
                                <div class="form-group form-group-image">
                                    <label class="control-label">{{__("Facebook Image")}}</label>
                                    {!! \Modules\Media\Helpers\FileHelper::fieldUpload('car_page_list_seo_share[facebook][image]',$seo_share['facebook']['image'] ?? "" ) !!}
                                </div>
                            @endif
                        </div>
                        <div class="tab-pane" id="seo_3">
                            <div class="form-group">
                                <label class="control-label">{{__("Twitter Title")}}</label>
                                <input type="text" name="car_page_list_seo_share[twitter][title]" class="form-control" placeholder="{{__("Enter title...")}}" value="{{$seo_share['twitter']['title'] ?? "" }}">
                            </div>
                            <div class="form-group">
                                <label class="control-label">{{__("Twitter Description")}}</label>
                                <input type="text" name="car_page_list_seo_share[twitter][desc]" class="form-control" placeholder="{{__("Enter description...")}}" value="{{$seo_share['twitter']['title'] ?? "" }}">
                            </div>
                            @if(is_default_lang())
                                <div class="form-group form-group-image">
                                    <label class="control-label">{{__("Twitter Image")}}</label>
                                    {!! \Modules\Media\Helpers\FileHelper::fieldUpload('car_page_list_seo_share[twitter][image]', $seo_share['twitter']['image'] ?? "" ) !!}
                                </div>
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@if(is_default_lang())
<hr>
<div class="row">
    <div class="col-sm-4">
        <h3 class="form-group-title">{{__("Disable merchandise module?")}}</h3>
    </div>
    <div class="col-sm-8">
        <div class="panel">
            <div class="panel-title"><strong>{{__("Disable merchandise module")}}</strong></div>
            <div class="panel-body">
                <div class="form-group">
                    <div class="form-controls">
                    <label><input type="checkbox" name="car_disable" value="1" @if(setting_item('car_disable')) checked @endif > {{__('Yes, please disable it')}}</label>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@endif

