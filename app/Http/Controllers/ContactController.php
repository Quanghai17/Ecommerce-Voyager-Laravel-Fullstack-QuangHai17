<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class ContactController extends Controller
{
  public function index()
  {

    $pageMeta = [
      'title' => 'Liên hệ',  
    ];

    return view('frontend.contact.index', compact( 'pageMeta'));
  }

  public function show()
  {
    $products = \App\Product::inRandomOrder()->take(12)->get();
    $productAll = \App\Product::inRandomOrder()->get();
    $pageMeta = [
      'title' => 'Báo giá sỉ',  
    ];

    return view('frontend.contact.show', compact( 'pageMeta', 'products', 'productAll'));
  }

  public function store(Request $request)
  {
    $validated = $request->validate([
      'name' => 'required|max:120',
      'phone' => 'required|numeric|digits:10',
      'address' => 'required|max:120',
      'content' => 'required|max:120',
      
    ]);

    $alert = [
      "type" => "success",
      "title" => __("Success"),
      "body" => __("Thank you for your contact, please wait for us to reply to you!")
    ];
    
    try {
      $feedback = new \App\Contact();
      $feedback->name = $request->name;
      $feedback->phone = $request->phone;
      $feedback->email = $request->email;
      $feedback->address = $request->address;
      $feedback->content = $request->content;
      $feedback->save();

      // dd( $feedback);
    }
    catch(\Exception $e){
      dd($e);
      $alert = [
        "type" => "error",
        "title" => __("Error"),
        "body" => __("Something went wrong, please try again later!")
      ];
    }

    return redirect()->back()->with('alert', $alert);
  }

  public function partners(Request $request)
  {
    // dd($request->all());
      $validated = $request->validate([
      'name' => 'required|max:120',
      'phone' => 'required|numeric|digits:10',
      'address' => 'required|max:120',
      
    ]);

    $alert = [
      "type" => "success",
      "title" => __("Success"),
      "body" => __("Thank you for your contact, please wait for us to reply to you!")
    ];
    
    try {
      $feedback = new \App\Partner();
      $feedback->name = $request->name;
      $feedback->phone = $request->phone;
      $feedback->email = $request->email;
      $feedback->address = $request->address;
      $feedback->products = $request->list_product;
      $feedback->save();

      // dd( $feedback);
    }
    catch(\Exception $e){
      dd($e);
      $alert = [
        "type" => "error",
        "title" => __("Error"),
        "body" => __("Something went wrong, please try again later!")
      ];
    }

    return redirect()->back()->with('alert', $alert);
  }
}