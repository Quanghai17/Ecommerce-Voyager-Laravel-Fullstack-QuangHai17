<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ProjectController extends Controller
{
    public function index()
    {

        $projects = \App\Project::where('status', 'PUBLISHED')->paginate(9);
        $categories = \TCG\Voyager\Models\Category::get();
        // dd($news);
        $pageMeta = [
            'title' => 'Dự án tiêu biểu',
        ];

        return view('frontend.projects.index', compact('projects', 'pageMeta', 'categories'));
    }

    public function show($slug)
    {

        $project = \App\Project::where('slug', $slug)->first();
        $title = $project->title ?? "";
        //    dd($recentproject);
        $pageMeta = [
            'title' => $title,
            'meta_description' => $project->meta_description,
            'image' => $project->image,
        ];
        return view('frontend.projects.show', compact('project', 'title', 'pageMeta'));
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
