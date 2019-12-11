@php
    if(!empty($translation->include)){
        $title = __("Included");
    }
    if(!empty($translation->exclude)){
        $title = __("Excluded");
    }
    if(!empty($translation->exclude) and !empty($translation->include)){
        $title = __("Included/Excluded");
    }
@endphp
@if(!empty($title))
  {{--  <div class="g-include-exclude">
        <h3> {{ $title }} </h3>
        <div class="row">
            @if($translation->include)
                <div class="col-lg-6 col-md-6">
                    @foreach($translation->include as $item)
                        <div class="item">
                            <i class="icofont-check-alt icon-include"></i>
                            {{$item['title']}}
                        </div>
                    @endforeach
                </div>
            @endif
            @if($translation->exclude)
                <div class="col-lg-6 col-md-6">
                    @foreach($translation->exclude as $item)
                        <div class="item">
                            <i class="icofont-close-line icon-exclude"></i>
                            {{$item['title']}}
                        </div>
                    @endforeach
                </div>
            @endif
        </div>
    </div> --}}
    
        <div class="g-include-exclude panel panel-default">
          <div class="panel-heading accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" data-target="#collapseOne">
            <h3> {{ $title }} </h3>
          </div>
          <div id="collapseOne" class="panel-collapse collapse">
            <div class="panel-body">
              <div class="row">
            @if($translation->include)
                <div class="col-lg-6 col-md-6">
                    @foreach($translation->include as $item)
                        <div class="item">
                            <i class="icofont-check-alt icon-include"></i>
                            {{$item['title']}}
                        </div>
                    @endforeach
                </div>
            @endif
            @if($translation->exclude)
                <div class="col-lg-6 col-md-6">
                    @foreach($translation->exclude as $item)
                        <div class="item">
                            <i class="icofont-close-line icon-exclude"></i>
                            {{$item['title']}}
                        </div>
                    @endforeach
                </div>
            @endif
        </div>
            </div>
          </div>
        </div>
      
@endif

