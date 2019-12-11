<?php
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
use Illuminate\Support\Facades\Route;
// Vendor Manage Attraction
Route::group(['prefix'=>'user/'.config('attraction.attraction_route_prefix')],function(){
    Route::match(['get',],'/','ManageAttractionController@manageAttraction')->name('attraction.vendor.index');
    Route::match(['get',],'/create','ManageAttractionController@createAttraction')->name('attraction.vendor.create');
    Route::match(['get',],'/edit/{slug}','ManageAttractionController@editAttraction')->name('attraction.vendor.edit');
    Route::match(['get','post'],'/del/{slug}','ManageAttractionController@deleteAttraction')->name('attraction.vendor.delete');
    Route::match(['post'],'/store/{slug}','ManageAttractionController@store')->name('attraction.vendor.store');
    Route::get('bulkEdit/{id}','ManageAttractionController@bulkEditAttraction')->name("attraction.vendor.bulk_edit");

    Route::get('/booking-report','ManageAttractionController@bookingReport')->name("attraction.vendor.booking_report");
    Route::get('/booking-report/bulkEdit/{id}','ManageAttractionController@bookingReportBulkEdit')->name("attraction.vendor.booking_report.bulk_edit");

    Route::group(['prefix'=>'availability'],function(){
        Route::get('/','AvailabilityController@index')->name('attraction.vendor.availability.index');
        Route::get('/loadDates','AvailabilityController@loadDates')->name('attraction.vendor.availability.loadDates');
        Route::match(['get','post'],'/store','AvailabilityController@store')->name('attraction.vendor.availability.store');
    });
});

// Attraction
Route::group(['prefix'=>config('attraction.attraction_route_prefix')],function(){
    Route::get('/','\Modules\Attraction\Controllers\AttractionController@index')->name('attraction.search'); // Search
    Route::get('/{slug}','\Modules\Attraction\Controllers\AttractionController@detail');// Detail
});
