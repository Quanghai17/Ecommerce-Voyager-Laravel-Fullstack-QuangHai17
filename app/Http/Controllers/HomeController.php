<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        // $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $homeBanners = \App\Banner::where('status', 'ACTIVE')->where('type', 'bannerHome')->get();
        $homeMiddle = \App\Banner::where('status', 'ACTIVE')->where('type', 'bannerMiddle')->get();
        $about = \TCG\Voyager\Models\Page::where('status', 'ACTIVE')->first();
        $categories = \App\Category::get();
        $hotProducts = \App\Product::inRandomOrder()->where('featured', 1)->take(6)->get();
        // dd($hotProducts);
        $products = \App\Product::inRandomOrder()->where('featured', 1)->take(8)->get();
        $posts = \TCG\Voyager\Models\Post::where('status', 'PUBLISHED')->limit(9)->get();
        // dd($homeBanners);
        return view(('frontend.homepage.index'), [
            'homeBanners' => $homeBanners,
            'homeMiddle' => $homeMiddle,
            'about' => $about,
            'categories' => $categories,
            'hotProducts' => $hotProducts,
            'products' =>  $products,
            'posts' => $posts
          ]);
    }
}
