@if(count($attraction_related) > 0)
    <div class="bravo-list-tour-related">
        <h2>{{__("You might also like")}}</h2>
        <div class="row">
            @foreach($attraction_related as $k=>$item)
                <div class="col-md-3">
                    @include('Attraction::frontend.layouts.search.loop-gird',['row'=>$item,'include_param'=>0])
                </div>
            @endforeach
        </div>
    </div>
@endif