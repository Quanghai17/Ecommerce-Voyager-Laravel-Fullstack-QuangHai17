<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\CheckoutRequest;
use Cart;
use App\Order;
use App\OrderProduct;
use Cartalyst\Stripe\Stripe;
use Mail;
use App\Mail\OrderPlaced;
use App\Product;

class CheckoutController extends Controller
{


    public function index()
    {
        if (Cart::instance('default')->count() > 0) {
            $subtotal = Cart::instance('default')->subtotal() ?? 0;
            $discount = session('coupon')['discount'] ?? 0;
            $newSubtotal = $subtotal - $discount > 0 ? $subtotal - $discount : 0;
            $tax = $newSubtotal * (config('cart.tax') / 100);
            $total = $tax + $newSubtotal;
            return view('checkout')->with([
                'subtotal' => $subtotal,
                'discount' => $discount,
                'newSubtotal' => $newSubtotal,
                'total' => $total,
                'tax' => $tax
            ]);
        }
        return redirect()->route('cart.index')->withError('Chưa có sản phẩm nào trong giỏ hàng');
    }

    public function store(CheckoutRequest $request)
    {
        if ($this->productsAreNoLongerAvailable()) {
            return back()->withError('Xin lỗi, sản phẩm của chúng tôi đã hết hàng');
        }
        $contents = Cart::instance('default')->content()->map(function ($item) {
            return $item->model->slug . ', ' . $item->qty;
        })->values()->toJson();

        $alert = [
            "type" => "success",
            "title" => __("Success"),
            "body" => __("Chúc mừng bạn đã mua hàng thành công!")
          ];

        try {
           
            $order = $this->insertIntoOrdersTable($request, null);
            // dd($order);
            // SUCCESSFUL
            $this->decreaseQuantities();
            // dd($this);
            // Mail::to('me@me.com')->send(new OrderPlaced($order));
            Cart::instance('default')->destroy();
            session()->forget('coupon');
            return redirect()->route('home')->with('alert', $alert);
        } catch (Exception $e) {
            $this->insertIntoOrdersTable($request, $e->getMessage());
            return back()->withError('Error ' . $e->getMessage());
        }
    }

    private function getNumbers()
    {
        $tax = config('cart.tax') / 100;
        $discount = session()->get('coupon')['discount'] ?? 0;
        $code = session()->get('coupon')['code'] ?? null;
        $newSubtotal = Cart::instance('default')->subtotal() - $discount;
        if ($newSubtotal < 0) {
            $newSubtotal = 0;
        }
        $newTax = $newSubtotal * $tax;
        $newTotal = $newSubtotal + $newTax;
        return collect([
            'tax' => $tax,
            'discount' => $discount,
            'code' => $code,
            'newSubtotal' => $newSubtotal,
            'newTax' => $newTax,
            'newTotal' => $newTotal
        ]);
    }

    private function insertIntoOrdersTable($request, $error)
    {
        $order = Order::create([
            'user_id' => auth()->user() ? auth()->user()->id : null,
            'billing_email' => $request->email,
            'billing_name' => $request->name,
            'billing_address' => $request->address,
            'billing_city' => $request->city,
            'billing_province' => $request->province,
            'billing_postalcode' => $request->postal_code,
            'billing_phone' => $request->phone,
            'billing_name_on_card' => $request->name_on_card,
            'billing_discount' => $this->getNumbers()->get('discount'),
            'billing_discount_code' => $this->getNumbers()->get('code'),
            'billing_subtotal' => $this->getNumbers()->get('newSubtotal'),
            'billing_tax' => $this->getNumbers()->get('newTax'),
            'billing_total' => $this->getNumbers()->get('newTotal'),
            'error' => $error
        ]);

        foreach (Cart::instance('default')->content() as $item) {
            OrderProduct::create([
                'product_id' => $item->model->id,
                'order_id' => $order->id,
                'quantity' => $item->qty
            ]);
        }
        return $order;
    }

    private function decreaseQuantities()
    {
        foreach (Cart::instance('default')->content() as $item) {
            $product = Product::find($item->model->id);
            $product->update(['quantity' => $product->quantity - $item->qty]);
            $product->update(['quantity_purchased' => $product->quantity_purchased + $item->qty]);
        }
    }

    private function productsAreNoLongerAvailable()
    {
        foreach (Cart::instance('default')->content() as $item) {
            $product = Product::find($item->model->id);
            if ($product->quantity < $item->qty) {
                return true;
            }
        }
        return false;
    }
}
