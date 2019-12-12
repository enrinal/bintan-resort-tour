<div class="bravo-more-book-mobile">
    <div class="container">
        <div class="left">
            <div class="g-price">
                <div class="prefix">
                    <span class="fr_text">{{__("from")}}</span>
                </div>
                <div class="price">
                    <span class="onsale">{{ $row->display_sale_price }}</span>
                    <span class="text-price">{{ $row->display_price }}</span>
                </div>
            </div>
        </div>
        <div class="right">
            <a class="btn btn-primary bravo-button-book-mobile">{{__("Book Now")}}</a>
        </div>
    </div>
</div>