@extends('frontend.layouts.default')
@extends('layouts.app')
@section('content')
    {{-- @include('partials.errors') --}}
    <!-- Start checkout page area -->
    <div class="checkout__page--area" style="border: 1px solid var(--border-color2);">
        <div class="container">
            <div class="checkout__page--inner d-flex">
                <div class="main checkout__mian">
                    <header class="main__header checkout__mian--header mb-30">
                        <h1 class="main__logo--title"><a class="logo logo__left mb-20" href="{{route('home')}}"><img style="max-width: 50%;"
                                    src="{{ \TCG\Voyager\Facades\Voyager::image(setting('site.logo')) }}" alt="logo"></a></h1>
                        <details class="order__summary--mobile__version">
                            <summary class="order__summary--toggle border-radius-5">
                                <span class="order__summary--toggle__inner">
                                    <span class="order__summary--toggle__icon">
                                        <svg width="20" height="19" xmlns="http://www.w3.org/2000/svg">
                                            <path
                                                d="M17.178 13.088H5.453c-.454 0-.91-.364-.91-.818L3.727 1.818H0V0h4.544c.455 0 .91.364.91.818l.09 1.272h13.45c.274 0 .547.09.73.364.18.182.27.454.18.727l-1.817 9.18c-.09.455-.455.728-.91.728zM6.27 11.27h10.09l1.454-7.362H5.634l.637 7.362zm.092 7.715c1.004 0 1.818-.813 1.818-1.817s-.814-1.818-1.818-1.818-1.818.814-1.818 1.818.814 1.817 1.818 1.817zm9.18 0c1.004 0 1.817-.813 1.817-1.817s-.814-1.818-1.818-1.818-1.818.814-1.818 1.818.814 1.817 1.818 1.817z"
                                                fill="currentColor"></path>
                                        </svg>
                                    </span>
                                    <span class="order__summary--toggle__text show">
                                        <span>Sản phẩm trong giỏ hàng</span>
                                        <svg width="11" height="6" xmlns="http://www.w3.org/2000/svg"
                                            class="order-summary-toggle__dropdown" fill="currentColor">
                                            <path
                                                d="M.504 1.813l4.358 3.845.496.438.496-.438 4.642-4.096L9.504.438 4.862 4.534h.992L1.496.69.504 1.812z">
                                            </path>
                                        </svg>
                                    </span>
                                    <span class="order__summary--final__price">{{ number_format($total, 0) }} đ</span>
                                </span>
                            </summary>
                            <div class="order__summary--section">
                                <div class="cart__table checkout__product--table">
                                    <table class="summary__table">
                                        <tbody class="summary__table--body">
                                            @foreach (Cart::instance('default')->content() as $item)
                                            <tr class=" summary__table--items">
                                                <td class=" summary__table--list">
                                                    <div class="product__image two  d-flex align-items-center">
                                                        <div class="product__thumbnail border-radius-5">
                                                            <a href="#"><img class="border-radius-5"
                                                                    src="{{ Voyager::image($item->model->image) }}"
                                                                    alt="cart-product"></a>
                                                            <span class="product__thumbnail--quantity">1</span>
                                                        </div>
                                                        <div class="product__description">
                                                            <h3 class="product__description--name h4"><a
                                                                    href="#">{{ $item->model->name }}</a>
                                                            </h3>
                                                            
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class=" summary__table--list">
                                                    <span class="cart__price">{{ number_format($item->price, 0) }}đ</span>
                                                </td>
                                            </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                </div>
                                <div class="checkout__discount--code">
                                    @if (!session()->has('coupon'))
                                        <form class="d-flex" action="{{ route('coupon.store') }}" method="POST">
                                            @csrf()
                                            <label>
                                                <input name="coupon_code" class="checkout__discount--code__input--field border-radius-5" placeholder="Mã giảm giá" type="text">
                                            </label>
                                            <button class="checkout__discount--code__btn btn border-radius-5" type="submit">Sử dụng</button>
                                        </form>
                                    @endif
                                </div>
                                <div class="checkout__total">
                                    <table class="checkout__total--table">
                                        <tbody class="checkout__total--body">
                                            <tr class="checkout__total--items">
                                                <td class="checkout__total--title text-left">Tạm tính </td>
                                                <td class="checkout__total--amount text-right"> {{ number_format($newSubtotal, 0) }} đ</td>
                                            </tr>
                                            <tr class="checkout__total--items">
                                                <td class="checkout__total--title text-left">Vận chuyển</td>
                                                <td class="checkout__total--calculated__text text-right">thanh toán khi nhận hàng
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tfoot class="checkout__total--footer">
                                            <tr class="checkout__total--footer__items">
                                                <td class="checkout__total--footer__title checkout__total--footer__list text-left">
                                                    Tổng tiền </td>
                                                <td class="checkout__total--footer__amount checkout__total--footer__list text-right">
                                                    {{ number_format($total, 0) }} đ</td>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                            </div>
                        </details>
                    </header>
                    <main class="main__content_wrapper section--padding pt-0">
                        <form aaction="{{ route('checkout.store') }}" method="POST">
                            @csrf()
                            <input type="hidden" name="postal_code" value="1234"> 
                            <input type="hidden" name="name_on_card" value="abc"> 
                            <input type="hidden" name="credit_card" value="xyz"> 
                            <input type="hidden" name="email" value="test@gmail.com"> 
                            {{-- <input type="hidden" name="id" value="{{ $product->id }}">  --}}
                            {{-- <div class="checkout__content--step section__contact--information">
                                <div
                                    class="section__header checkout__section--header d-flex align-items-center justify-content-between mb-25">
                                    <h2 class="section__header--title h3">Thông tin thanh toán</h2>
                                </div>
                                <div class="customer__information">
                                    <div class="checkout__email--phone mb-12">
                                        <label>
                                            <input class="checkout__input--field border-radius-5" name="email" 
                                                placeholder="Email" type="text">
                                        </label>
                                    </div>
                                </div>
                            </div> --}}
                            <div class="checkout__content--step section__shipping--address">
                                <div class="section__header mb-25">
                                    <h2 class="section__header--title h3">Địa chỉ nhận hàng</h2>
                                </div>
                                <div class="section__shipping--address__content">
                                    <div class="row">
                                        <div class="col-lg-6 mb-12">
                                            <div class="checkout__input--list ">
                                                <label>
                                                    <input class="checkout__input--field border-radius-5" name="name" required
                                                        placeholder="Họ tên" type="text">
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-lg-6 mb-12">
                                            <div class="checkout__input--list">
                                                <label>
                                                    <input class="checkout__input--field border-radius-5" name="phone" required
                                                        placeholder="Số điện thoại" type="text">
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-12 mb-12">
                                            <div class="checkout__input--list">
                                                <label>
                                                    <input class="checkout__input--field border-radius-5" name="address" required
                                                        placeholder="Địa chỉ" type="text">
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-12 mb-12">
                                            <div class="checkout__input--list">
                                                <label>
                                                    <input class="checkout__input--field border-radius-5"  name="city" required
                                                        placeholder="Thành phố (Huyện)" type="text"> 
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-12 mb-12">
                                            <div class="checkout__input--list">
                                                <label>
                                                    <input class="checkout__input--field border-radius-5" name="province" required
                                                        placeholder="Tỉnh" type="text">
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-12 mb-12">
                                            <div class="checkout__input--list">
                                                <label>
                                                    <input class="checkout__input--field border-radius-5"   
                                                        placeholder="email" type="text">
                                                </label>
                                            </div>
                                        </div>
                                        
                                    </div>
                                    
                                </div>
                            </div>
                            <div class="checkout__content--step__footer d-flex align-items-center">
                                <button type="submit" class="btn btn-success custom-border-success btn-block">Thanh toán</button>
                            </div>
                        </form>
                    </main>
                    
                </div>
                <aside class="checkout__sidebar sidebar">
                    <div class="cart__table checkout__product--table">
                        <table class="cart__table--inner">
                            <tbody class="cart__table--body">
                                @foreach (Cart::instance('default')->content() as $item)
                                {{-- @dd( $item); --}}
                                <tr class="cart__table--body__items">
                                    <td class="cart__table--body__list">
                                        <div class="product__image two  d-flex align-items-center">
                                            <div class="product__thumbnail border-radius-5">
                                                <a href="#"><img class="border-radius-5"
                                                        src="{{ Voyager::image($item->model->image) }}"
                                                        alt="cart-product"></a>
                                                <span class="product__thumbnail--quantity">{{ $item->qty }}</span>
                                            </div>
                                            <div class="product__description">
                                                <h3 class="product__description--name h4"><a
                                                        href="#">{{ $item->model->name }}</a></h3>
                                                
                                            </div>
                                        </div>
                                    </td>
                                    <td class="cart__table--body__list">
                                        <span class="cart__price">{{ number_format($item->price, 0) }}đ</span>
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                    <div class="checkout__discount--code">
                        @if (!session()->has('coupon'))
                            <form class="d-flex" action="{{ route('coupon.store') }}" method="POST">
                                @csrf()
                                <label>
                                    <input name="coupon_code" class="checkout__discount--code__input--field border-radius-5" placeholder="Mã giảm giá" type="text">
                                </label>
                                <button class="checkout__discount--code__btn btn border-radius-5" type="submit">Sử dụng</button>
                            </form>
                        @endif
                    </div>
                    <div class="checkout__total">
                        <table class="checkout__total--table">
                            <tbody class="checkout__total--body">
                                <tr class="checkout__total--items">
                                    <td class="checkout__total--title text-left">Tạm tính </td>
                                    <td class="checkout__total--amount text-right"> {{ number_format($newSubtotal, 0) }} đ</td>
                                </tr>
                                <tr class="checkout__total--items">
                                    <td class="checkout__total--title text-left">Vận chuyển</td>
                                    <td class="checkout__total--calculated__text text-right">thanh toán khi nhận hàng
                                    </td>
                                </tr>
                            </tbody>
                            <tfoot class="checkout__total--footer">
                                <tr class="checkout__total--footer__items">
                                    <td class="checkout__total--footer__title checkout__total--footer__list text-left">
                                        Tổng tiền </td>
                                    <td class="checkout__total--footer__amount checkout__total--footer__list text-right">
                                        {{ number_format($total, 0) }} đ</td>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                </aside>
            </div>
        </div>
    </div>
    <!-- End checkout page area -->
    
@endsection
