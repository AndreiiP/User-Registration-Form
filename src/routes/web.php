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


Auth::routes();
Route::get('/member', 'MemberController@index');

Route::get('/', 'MainController@main');
Route::post('/', 'MainController@store');

Route::post('/first', 'MainController@backFirst');
Route::post('/hide', 'MemberController@hideMember');
Route::get('logout', 'Auth\LoginController@logout')->name('logout');
Route::post('/send', 'MainController@sendFormOne');

Route::get('/register', 'MainController@main');
Route::get('/home', 'HomeController@index')->name('home');

