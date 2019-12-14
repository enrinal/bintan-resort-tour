<div class="bravo_single_book_wrap @if(setting_item('attraction_enable_inbox')) has-vendor-box @endif">
    <div class="bravo_single_book">
        <div id="bravo_attraction_book_app" v-cloak>
            @if($row->discount_percent)
                <div class="tour-sale-box">
                    <span class="sale_class box_sale sale_small">{{$row->discount_percent}}</span>
                </div>
            @endif
            <div class="form-head">
                <div class="price">
                    <span class="label">
                        {{__("")}}
                    </span>
                    <span class="value">
                        <span class="onsale">{{ $row->display_sale_price }}</span>
                        <span class="text-lg">{{ $row->display_price }}</span>
                    </span>
                </div>
            </div>
            <div class="form-content">
                <div class="form-group form-date-field form-date-search clearfix " data-format="{{get_moment_date_format()}}">
                    <div class="date-wrapper clearfix" @click="openStartDate">
                        <div class="check-in-wrapper">
                            <label>{{__("Start Date")}}</label>
                            <div class="render check-in-render">@{{start_date_html}}</div>
                        </div>
                        <i class="fa fa-angle-down arrow"></i>
                    </div>
                    <input type="text" class="start_date" ref="start_date" style="height: 1px; visibility: hidden">
                </div>
                <div class="" v-if="person_types">
                    <div class="form-group form-guest-search" v-for="(type,index) in person_types">
                        <div class="guest-wrapper d-flex justify-content-between align-items-center">
                            <div class="flex-grow-1">
                                <label>@{{type.name}}</label>
                                <div class="render check-in-render">@{{type.desc}}</div>
                                <div class="render check-in-render">@{{type.display_price}} {{__("per person")}}</div>
                            </div>
                            <div class="flex-shrink-0">
                                <div class="input-number-group">
                                    <i class="icon ion-ios-remove-circle-outline" @click="minusPersonType(type)"></i>
                                    {{--<input type="number" class="form-control" v-model="person_types[index].number" :min="type.min" :max="type.max" readonly>--}}
                                    <span class="input">@{{type.number}}</span>
                                    <i class="icon ion-ios-add-circle-outline" @click="addPersonType(type)"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group form-guest-search" v-else>
                    <div class="guest-wrapper d-flex justify-content-between align-items-center">
                        <div class="flex-grow-1">
                            <label>{{__("Guests")}}</label>
                        </div>
                        <div class="flex-shrink-0">
                            <div class="input-number-group">
                                <i class="icon ion-ios-remove-circle-outline" @click="minusGuestsType()"></i>
                                <span class="input">@{{guests}}</span>
                                <i class="icon ion-ios-add-circle-outline" @click="addGuestsType()"></i>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-section-group form-group" v-if="extra_price.length">
                    <h4 class="form-section-title">{{__('Extra prices:')}}</h4>
                    <div class="form-group" v-for="(type,index) in extra_price">
                        <div class="extra-price-wrap d-flex justify-content-between">
                            <div class="flex-grow-1">
                                <label><input type="checkbox" v-model="type.enable"> @{{type.name}}</label>
                                <div class="render" v-if="type.price_type">(@{{type.price_type}})</div>
                            </div>
                            <div class="flex-shrink-0">@{{type.price_html}}</div>
                        </div>
                    </div>
                </div>
                <div class="form-section-group form-group-padding" v-if="buyer_fees.length">
                    <div class="extra-price-wrap d-flex justify-content-between" v-for="(type,index) in buyer_fees">
                        <div class="flex-grow-1">
                            <label>@{{type.type_name}}
                                <i class="icofont-info-circle" v-if="type.desc" data-toggle="tooltip" data-placement="top" :title="type.type_desc"></i>
                            </label>
                            <div class="render" v-if="type.price_type">(@{{type.price_type}})</div>
                        </div>
                        <div class="flex-shrink-0">@{{formatMoney(type.price)}}
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-section-total" v-if="total_price > 0">
                <label>{{__("Total")}}</label>
                <span class="price">@{{total_price_html}}</span>
            </div>
            <div v-html="html"></div>
            <div class="submit-group">
                <a class="btn btn-large" @click="doSubmit($event)" :class="{'disabled':onSubmit,'btn-success':(step == 2),'btn-primary':step == 1}" name="submit">
                    <span v-if="step == 1">{{__("BOOK NOW")}}</span>
                    <span v-if="step == 2">{{__("Book Now")}}</span>
                    <i v-show="onSubmit" class="fa fa-spinner fa-spin"></i>
                </a>
                <div class="alert-text mt10" v-show="message.content" v-html="message.content" :class="{'danger':!message.type,'success':message.type}"></div>
            </div>
        </div>
    </div>
</div>
