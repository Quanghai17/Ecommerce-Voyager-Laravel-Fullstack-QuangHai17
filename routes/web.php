<?php

use App\CountryVisit;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use TCG\Voyager\Facades\Voyager;

Route::get('logs', '\Rap2hpoutre\LaravelLogViewer\LogViewerController@index')->middleware('admin');

// Shop and welcome
Route::get('/', 'HomeController@index')->name('home');
Route::get('/about/{slug}', [\App\Http\Controllers\AboutController::class , 'index'])->name('about');
//product
Route::get('/products', [\App\Http\Controllers\ProductController::class , 'index'])->name('products');
Route::get('/categories/{slug}', [\App\Http\Controllers\ProductController::class , 'categories'])->name('categories.category');
Route::get('/products/{slug}', [\App\Http\Controllers\ProductController::class , 'show'])->name('products.show');
Route::get('/search',[\App\Http\Controllers\ProductController::class , 'search'])->name('search');

//News
Route::get('/news', [\App\Http\Controllers\PostController::class , 'index'])->name('news');
Route::get('/news/{slug}', [\App\Http\Controllers\PostController::class , 'show'])->name('news.show');
Route::get('/searchPost',[\App\Http\Controllers\PostController::class , 'search'])->name('searchPost');

//Project
Route::get('/projects', [\App\Http\Controllers\ProjectController::class , 'index'])->name('projects');
Route::get('/projects/{slug}', [\App\Http\Controllers\ProjectController::class , 'show'])->name('projects.show');

//Shop
Route::get('/contact', "\App\Http\Controllers\ContactController@index")->name('contact');
Route::get('/bao-gia', "\App\Http\Controllers\ContactController@show");
Route::get('/tra-cuu', "\App\Http\Controllers\SearchOrderController@index");
Route::get('/searchOrder', "\App\Http\Controllers\SearchOrderController@search")->name('searchOrder');

Route::post('/feedback', "\App\Http\Controllers\ContactController@store")->name('feedback');
Route::post('/partners', "\App\Http\Controllers\ContactController@partners")->name('partners');
Route::get('/shop', 'ShopController@index')->name('shop.index');
Route::get('/shop/{product}', 'ShopController@show')->name('shop.show');
Route::get('/shop/search/{query}', 'ShopController@search')->name('shop.search');


// Cart
Route::get('/cart', 'CartController@index')->name('cart.index');
Route::post('/cart', 'CartController@store')->name('cart.store');
Route::post('/buynow', 'CartController@buynow')->name('buynow');
Route::delete('/cart/{product}/{cart}', 'CartController@destroy')->name('cart.destroy');
Route::post('/cart/save-later/{product}', 'CartController@saveLater')->name('cart.save-later');
Route::post('/cart/add-to-cart/{product}', 'CartController@addToCart')->name('cart.add-to-cart');
Route::patch('/cart/{product}', 'CartController@update')->name('cart.update');

// checkout
Route::get('/checkout', 'CheckoutController@index')->name('checkout.index');
Route::post('/checkout', 'CheckoutController@store')->name('checkout.store');
Route::get('/guest-checkout', 'CheckoutController@index')->name('checkout.guest');

// coupon
Route::post('/coupon', 'CouponsController@store')->name('coupon.store');
Route::delete('/coupon', 'CouponsController@destroy')->name('coupon.destroy');

// auth routes
Auth::routes();
Route::get('/login/{provider}', 'Auth\LoginController@redirectToProvider');
Route::get('/login/{provider}/callback', 'Auth\LoginController@handleProviderCallback');

Route::get('/home', 'HomeController@index')->name('home');

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
    Route::get('/country_visits', 'VisitsController@index')->name('voyager.visits');
});

Route::get('sitemap-create', function () {
	Artisan::call('sitemap:create');

	return 'xong';
});
