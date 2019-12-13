<?php
use Illuminate\Support\Facades\Route;

Route::group(['prefix'=>config('events.events_route_prefix')],function(){
    Route::get('/'.config('events.events_category_route_prefix').'/{slug}', 'CategoryEventsController@index');
    Route::get('/'.config('events.events_tag_route_prefix').'/{slug}', 'TagEventsController@index');
    Route::get('/','EventsController@index')->name('events.index');// Events Page
    Route::get('/{slug}','EventsController@detail')->name('events.detail');// Detail
});