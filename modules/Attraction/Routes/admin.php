<?php
use Illuminate\Support\Facades\Route;

Route::get('/','AttractionController@index')->name('attraction.admin.index');

Route::match(['get'],'/create','AttractionController@create')->name('attraction.admin.create');
Route::match(['get'],'/edit/{id}','AttractionController@edit')->name('attraction.admin.edit');

Route::post('/store/{id}','AttractionController@store')->name('attraction.admin.store');

Route::get('/getForSelect2','AttractionController@getForSelect2')->name('attraction.admin.getForSelect2');
Route::post('/bulkEdit','AttractionController@bulkEdit')->name('attraction.admin.bulkEdit');

Route::match(['get'],'/category','CategoryController@index')->name('attraction.admin.category.index');
Route::match(['get'],'/category/edit/{id}','CategoryController@edit')->name('attraction.admin.category.edit');
Route::post('/category/store/{id}','CategoryController@store')->name('attraction.admin.category.store');

Route::match(['get'],'/attribute','AttributeController@index')->name('attraction.admin.attribute.index');
Route::match(['get'],'/attribute/edit/{id}','AttributeController@edit')->name('attraction.admin.attribute.edit');
Route::post('/attribute/store/{id}','AttributeController@store')->name('attraction.admin.attribute.store');

Route::match(['get'],'/attribute/term_edit','AttributeController@terms')->name('attraction.admin.attribute.term.index');
Route::match(['get'],'/attribute/term_edit/edit/{id}','AttributeController@term_edit')->name('attraction.admin.attribute.term.edit');
Route::post('/attribute/term_store/{id}','AttributeController@term_store')->name('attraction.admin.attribute.term.store');


Route::group(['prefix'=>'availability'],function(){
    Route::get('/','AvailabilityController@index')->name('attraction.admin.availability.index');
    Route::get('/loadDates','AvailabilityController@loadDates')->name('attraction.admin.availability.loadDates');
    Route::get('/store','AvailabilityController@store')->name('attraction.admin.availability.store');
});
