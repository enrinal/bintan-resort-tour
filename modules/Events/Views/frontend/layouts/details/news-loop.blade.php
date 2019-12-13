@foreach($rows as $row)
    @php
        $translation = $row->translateOrOrigin(app()->getLocale()); @endphp
    <div class="post_item">
        <div class="header">
            @if($image_tag = get_image_tag($row->image_id,'full'))
                <header class="post-header fl">
                    <a href="{{$row->getDetailUrl()}}">
                        {!! $image_tag !!}
                    </a>
                </header>
                
            @endif
            <div class="post-inner fr">
                <h4 class="post-title">
                    <a class="text-darken" href="{{$row->getDetailUrl()}}"> {{$translation->title}}</a>
                </h4>
                <div class="post-desciption">
                    {!! get_exceprt($translation->content) !!}
                </div>
                <a class="btn-readmore" href="{{$translation->lang}}">{{ __('Link Event')}}</a>
            </div>
        </div>
    </div>
@endforeach
