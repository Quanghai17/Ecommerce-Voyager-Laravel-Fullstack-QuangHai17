<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class SearchOrderController extends Controller
{
  public function index()
  {

    $pageMeta = [
      'title' => 'Tra cứu đơn hàng',  
    ];

    return view('frontend.order.index', compact( 'pageMeta'));
  }

  public function search(Request $request)
    {
        $key_form = $request->key;
        $key = str_replace(' ', '%', $key_form);
        $orders = \App\Order::with('products')->where('billing_phone', 'LIKE', '%' . $key . '%')->get();
        // dd($orders);
       
        $pageMeta = [
            'title' => 'Sản phẩm',
        ];

        return view(('frontend.order.index'), ([
            'orders' => $orders,
            'pageMeta' => $pageMeta
        ]));
    }
  
}