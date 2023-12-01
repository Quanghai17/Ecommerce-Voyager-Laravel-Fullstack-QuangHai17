<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PostController extends Controller
{
    public function index()
    {

        $news = \TCG\Voyager\Models\Post::where('status', 'PUBLISHED')->paginate(9);
        $categories = \TCG\Voyager\Models\Category::get();
        // dd($news);
        $pageMeta = [
            'title' => 'Kiến thức - Kinh nghiệm',
        ];

        return view('frontend.posts.index', compact('news', 'pageMeta', 'categories'));
    }

    public function show($slug)
    {

        $new = \TCG\Voyager\Models\Post::where('slug', $slug)->first();
        $title = $new->title ?? "";
        $recentNew = \TCG\Voyager\Models\Post::where('status', 'PUBLISHED')->limit(6)->get();
        $categories = \TCG\Voyager\Models\Category::get();
        //    dd($recentNew);
        $pageMeta = [
            'title' => $title,
            'meta_description' => $new->meta_description,
            'image' => $new->image,
        ];
        return view('frontend.posts.show', compact('new', 'title', 'recentNew', 'pageMeta', 'categories'));
    }

    public function search(Request $request)
    {
        $recentNew = \TCG\Voyager\Models\Post::where('status', 'PUBLISHED')->paginate(6);
        $key_form = $request->key;
        $key = str_replace(' ', '%', $key_form);
        $news = \TCG\Voyager\Models\Post::where('title', 'LIKE', '%' . $key . '%')->paginate(6);
        $categories = \TCG\Voyager\Models\Category::get();
        return view('frontend.posts.index', [
            'news' => $news,
            'categories' => $categories,

        ]);
    }
}
