<?php
/**
 * Created by PhpStorm.
 * User: Admin
 * Date: 7/1/2019
 * Time: 10:02 AM
 */
use Illuminate\Support\Facades\Route;

Route::get('/edit/{id}', 'EventsController@edit')->name('events.admin.edit');

Route::post('/store/{id}','EventsController@store')->name('events.admin.store');

Route::get('/category','CategoryController@index')->name('events.admin.category.index');

Route::get('category/getForSelect2','CategoryController@getForSelect2')->name('events.admin.category.getForSelect2');

Route::get('/category/{id}','CategoryController@edit')->name('events.admin.category.edit');

Route::post('/category/store/{id}','CategoryController@store')->name('events.admin.category.store');

Route::get('/tag','TagController@index')->name('events.admin.tag.index');
Route::get('/tag/edit/{id}','TagController@edit')->name('events.admin.tag.edit');
Route::post('/tag/store/{id}','TagController@store')->name('events.admin.tag.store');