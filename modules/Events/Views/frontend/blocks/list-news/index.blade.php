<div class="bravo-list-news" style="padding-top: 30px; padding-bottom: 30px;">
    <div class="container-fluid" style="padding-right: 30px; padding-left: 30px">
        @if($title)
            <div class="title title_style" style="margin-bottom: 30px;">
                {{$title}}
                @if(!empty($desc))
                    <div class="sub-title">
                        {{$desc}}
                    </div>
                @endif
            </div>
        @endif
        <div class="list-item">
            <div class="row">
                @foreach($rows as $row)
                    <div class="col-lg-3 col-md-6">
                        @include('Events::frontend.blocks.list-news.loop')
                    </div>
                @endforeach
            </div>
        </div>
    </div>
</div>