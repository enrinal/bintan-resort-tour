@foreach($rows as $row)
@php
$translation = $row->translateOrOrigin(app()->getLocale()); @endphp
@if($loop->iteration % 2 == 0)
<div class="row same-height">
    <div class="col-lg-6 text-block height slideInRight">
        <div class="centered">
            <h2 class="intro-heading">{{$translation->title}}</h2>
            <p class="intro">{!! get_exceprt($translation->content,160,"...") !!}</p>
            <a href="{{url($row->lang)}}" class="btn btn-primary btn-md">Go to the event’s website</a>
        </div>
    </div>
    <div class="col-lg-6 image height  slideInLeft">
        <div class="bg-stretch">
            <img class="img-responsive" src="{{get_file_url($row->image_id,'medium')}}" height="475" width="960" alt="image description">
        </div>
    </div>
</div>
@else
<div class="row same-height">
    <div class="col-lg-6 image height  slideInLeft">
        <div class="bg-stretch">
            <img class="img-responsive" src="{{get_file_url($row->image_id,'medium')}}" height="475" width="960" alt="image description">
        </div>
    </div>
    <div class="col-lg-6 text-block height slideInRight">
        <div class="centered">
            <h2 class="intro-heading">{{$translation->title}}</h2>
            <p class="intro">{!! get_exceprt($translation->content,160,"...") !!}</p>
            <a href="{{url($row->lang)}}" class="btn btn-primary btn-md">Go to the event’s website</a>
        </div>
    </div>
</div>
@endif

@endforeach