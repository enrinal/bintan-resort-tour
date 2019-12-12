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

