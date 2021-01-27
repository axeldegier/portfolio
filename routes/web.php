<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/', function () {
    return view('welcome');
});

Route::get('/posts', function () {
   $posts = App\Post::all();
   return view('posts', compact('posts'));
});

Route::get('post/{slug}', function($slug){
	$post = App\Post::where('slug', '=', $slug)->firstOrFail();
	return view('post', compact('post'));
});

Route::get('/contact', function () {
    return view('contact');
 });
 Route::get('/overons', function () {
    return view('contact');
 });
 Route::get('/layouts/app', function () {
    return view('login');
 });
 Route::get('/layouts/app', function () {
    return view('login');
 });
 
 Route::get('../vendor/tcg', function () {
    return view('admin');
 });
 

 Route::get('/contact', 'ContactController@index');
 Route::post('/contact/send', 'ContactController@ContactRequest');
 


Route::get('/home', 'HomeController@index')->name('home');



Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
