@extends('layouts.app')
@section('head')
    <link href="{{ asset('module/event/css/event.css?_ver='.config('app.version')) }}" rel="stylesheet">
    <link href="{{ asset('css/app.css?_ver='.config('app.version')) }}" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="{{ asset("libs/daterange/daterangepicker.css") }}">
    <link rel="stylesheet" type="text/css" href="{{ asset("module/event/css/animate.css") }}">
    <link rel="stylesheet" type="text/css" href="{{ asset("libs/ion_rangeslider/css/ion.rangeSlider.min.css") }}"/>
    <link rel="stylesheet" type="text/css" href="{{ asset("libs/fotorama/fotorama.css") }}"/>
@endsection
@section('content')
    <div class="bravo-news">
        @php
            $title_page = setting_item_with_lang("events_page_list_title");
            if(!empty($custom_title_page)){
                $title_page = $custom_title_page;
            }
        @endphp
        @if(empty($title_page))
            <div class="bravo_banner" @if($bg = setting_item("events_page_list_banner")) style="background-image: url({{get_file_url($bg,'full')}})" @endif >
                <div class="container">
                    
                </div>
            </div>
        @endif
   {{--     @include('Events::frontend.layouts.details.news-breadcrumb') --}}
        <div class="featured-content adventure-holder">
            <div class="container-fluid">
                        @if($rows->count() > 0)
                          
                                @include('Events::frontend.layouts.details.news-loop')
                            
                                <hr>
                                <div class="bravo-pagination">
                                    {{$rows->appends(request()->query())->links()}}
                                    <span class="count-string">{{ __("Showing :from - :to of :total posts",["from"=>$rows->firstItem(),"to"=>$rows->lastItem(),"total"=>$rows->total()]) }}</span>
                                </div>
                        @else
                            <div class="alert alert-danger">
                                {{__("Sorry, but nothing matched your search terms. Please try again with some different keywords.")}}
                            </div>
                        @endif
                   
                
            </div>
        </div>
    </div>
@endsection

 
  