<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function index()
    {

        $pagination = 12;
        if (request()->category) {
            $category = \App\Category::where('slug', request()->category)->get()->first();
            $products = \App\Product::where('category_id', $category->id);
            $categoryName = $category->name;
        } else if (request()->tag) {
            $tag = \App\Tag::where('slug', request()->tag)->get()->first();
            $products = $tag->products();
            $tagName = $tag->name;
        } else {
            $products = \App\Product::where('featured', true);
            $categoryName = 'Danh sách sản phẩm';
        }
        if (request()->sort == 'low_high') {
            $products = $products->orderBy('price')->paginate($pagination);
        } else if (request()->sort == 'high_low') {
            $products = $products->orderBy('price', 'desc')->paginate($pagination);
        } else {
            $products = $products->inRandomOrder()->paginate($pagination);
        }
        $categories = \App\Category::all();
        $tags = \App\Tag::all();
        $title = $categoryName ?? "Sản phẩm";
        // dd($categoryName);
        $pageMeta = [
            'title' => $title,
        ];

        return view(('frontend.products.index'), ([
            'products' => $products,
            'categories' => $categories,
            'tags' => $tags,
            'categoryName' => $categoryName ?? null,
            'tagName' => $tagName ?? null,
            'pageMeta' => $pageMeta
        ]));
    }

    public function show($slug)
    {

        $product =  \App\Product::where('slug', $slug)->firstOrFail();
        $category = \App\Category::where('id',  $product->category_id)->get()->first();
        $images = json_decode($product->images);
        $mightLike =  \App\Product::where('slug', '!=', $product->slug)->where('category_id', $category->id)->mightAlsoLike()->get();
        $products =  \App\Product::with('tags')->get();
        $stockLevel = getStockLevel($product->quantity);
        $title = $product->name ?? "Chi tiết sản phẩm";
        // dd($products);
        $pageMeta = [
            'title' => $title,
            'meta_description' => $product->meta_description,
            'image' => $product->image,
           
        ];

        return view('frontend.products.show')->with([
            'product' => $product,
            'mightLike' => $mightLike,
            'images' => $images,
            'stockLevel' => $stockLevel,
            'pageMeta' => $pageMeta,
            'category' =>$category
        ]);

    }

    public function search(Request $request)
    {
        $key_form = $request->key;
        $key = str_replace(' ', '%', $key_form);
        $products = \App\Product::where('name', 'LIKE', '%' . $key . '%')->paginate(12);
        $categories = \App\Category::all();
        $tags = \App\Tag::all();
        // dd(1);
        $pageMeta = [
            'title' => 'Sản phẩm',
        ];

        return view(('frontend.products.index'), ([
            'products' => $products,
            'categories' => $categories,
            'tags' => $tags,
            'categoryName' => $categoryName ?? null,
            'tagName' => $tagName ?? null,
            'pageMeta' => $pageMeta
        ]));
    }

    public function categories($slug)
    {

        $collection = \App\Category::where('slug', $slug)->first();
        // dd($collection);
        if ($collection == null) {
            return redirect()->route('index');
        }
        $products = \App\Product::where('category_id', $collection->id)->latest()->paginate(12);
        $categories = \App\Category::all();
        $tags = \App\Tag::all();

        $pageMeta = [
            'title' => $collection->name,
            // 'meta_description' => $category->name,
            // 'image' => setting('site.logo'),
        ];
        $title = $collection->title;
        return view('frontend.products.index', compact('products', 'pageMeta', 'title', 'categories', 'tags'));
    }

    
}
