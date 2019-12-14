@extends('layouts.app')
@section('head')
    <link href="{{ asset('module/attraction/css/attraction.css?_ver='.config('app.version')) }}" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="{{ asset("libs/ion_rangeslider/css/ion.rangeSlider.min.css") }}"/>
    <link rel="stylesheet" type="text/css" href="{{ asset("libs/fotorama/fotorama.css") }}"/>
@endsection
@section('content')
    <div class="bravo_detail_tour">
        @include('Attraction::frontend.layouts.details.tour-banner')
        <div class="bravo_content">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-lg-9">
                        @php $review_score = $row->review_data @endphp
                        @include('Attraction::frontend.layouts.details.tour-detail')
                        @include('Attraction::frontend.layouts.details.tour-review')
                    </div>
                    <div class="col-md-12 col-lg-3">
                        <!-- @include('Attraction::frontend.layouts.details.vendor') -->
                        @include('Attraction::frontend.layouts.details.tour-form-book')
                    </div>
                </div>
                <div class="row end_tour_sticky">
                    <div class="col-md-12">
                        @include('Attraction::frontend.layouts.details.tour-related')
                    </div>
                </div>
            </div>
        </div>
        <div class="bravo-more-book-mobile">
            <div class="container">
                <div class="left">
                    <div class="g-price">
                        
                        <div class="price">
                            <span class="onsale">{{ $row->display_sale_price }}</span> <br />
                            <span class="text-price">{{ $row->display_price }}</span>
                        </div>
                    </div>
                   @if(setting_item('attraction_enable_review'))
                    <?php
                    $reviewData = $row->getScoreReview();
                    $score_total = $reviewData['score_total'];
                    ?>
                    <div class="service-review attraction-review-{{$score_total}}">
                        
                    </div>
                    @endif 
                </div>
                <div class="right">
                    <a class="btn btn-primary bravo-button-book-mobile">{{__("Book Now")}}</a>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('footer')
    {!! App\Helpers\MapEngine::scripts() !!}
    <script>
        jQuery(function ($) {
            @if($row->map_lat && $row->map_lng)
            new BravoMapEngine('map_content', {
                disableScripts: true,
                fitBounds: true,
                center: [{{$row->map_lat}}, {{$row->map_lng}}],
                zoom:{{$row->map_zoom ?? "8"}},
                ready: function (engineMap) {
                    engineMap.addMarker([{{$row->map_lat}}, {{$row->map_lng}}], {
                        icon_options: {}
                    });
                }
            });
            @endif
        })
    </script>
    <script>
        var bravo_booking_data = {!! json_encode($booking_data) !!}
        var bravo_booking_i18n = {
                no_date_select:'{{__('Please select Start date')}}',
                no_guest_select:'{{__('Please select at least one guest')}}',
                load_dates_url:'{{route('attraction.vendor.availability.loadDates')}}'
            };
    </script>
    <script type="text/javascript" src="{{ asset("libs/ion_rangeslider/js/ion.rangeSlider.min.js") }}"></script>
    <script type="text/javascript" src="{{ asset("libs/fotorama/fotorama.js") }}"></script>
    <script type="text/javascript" src="{{ asset("libs/sticky/jquery.sticky.js") }}"></script>
    <script type="text/javascript" src="{{ asset('module/attraction/js/single-attraction.js?_ver='.config('app.version')) }}"></script>
@endsection
