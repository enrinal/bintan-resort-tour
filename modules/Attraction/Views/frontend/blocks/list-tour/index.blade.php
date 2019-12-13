<div class="bravo-list-tour {{$style_list}}">
    <div class="container-fluid">
        @if($title)
            <div class="title">
                {{$title}}
                @if(!empty($desc))
                    <div class="sub-title">
                        {{$desc}}
                    </div>
                @endif
            </div>
        @endif
        <div class="list-item">
            @if($style_list === "normal")
                <div class="row">
                    @foreach($rows as $row)
                        <div class="col-lg-{{$col ?? 3}} col-md-6">
                            @include('Attraction::frontend.layouts.search.loop-gird')
                        </div>
                    @endforeach
                </div>
            @endif
            @if($style_list === "carousel")
                <div class="owl-carousel">
                    @foreach($rows as $row)
                        @include('Attraction::frontend.layouts.search.loop-gird')
                    @endforeach
                </div>
            @endif
            @if($style_list === "box_shadow")
                <div class="row row-eq-height">
                    @foreach($rows as $row)
                        <div class="col-lg-{{$col ?? 3}} col-md-6 col-item">
                            @include('Attraction::frontend.blocks.list-tour.loop-box-shadow')
                        </div>
                    @endforeach
                </div>
            @endif
        </div>
    </div>
</div>