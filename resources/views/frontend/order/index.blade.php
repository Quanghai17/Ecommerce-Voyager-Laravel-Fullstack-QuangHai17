@extends('frontend.layouts.default')
@section('content')
    <main class="main__content_wrapper">

        <!-- Start breadcrumb section -->
        <section class="breadcrumb__section breadcrumb__bg"
            style="background-image: url('{{ \TCG\Voyager\Facades\Voyager::image(setting('site.breadcrumb')) }}')">
            <div class="container">
                <div class="row row-cols-1">
                    <div class="col">
                        <div class="breadcrumb__content text-center">
                            <h1 class="breadcrumb__content--title text-white mb-25">Tra cứu đơn hàng</h1>
                            <ul class="breadcrumb__content--menu d-flex justify-content-center">
                                <li class="breadcrumb__content--menu__items"><a class="text-white"
                                        href="{{ route('home') }}">Trang chủ</a>
                                </li>

                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End breadcrumb section -->

        <!-- Start contact section -->
        <section class="my__account--section section--padding">
            <div class="container">
                <div class="my__account--section__inner border-radius-10 d-flex">
                    <div class="account__left--sidebar">
                        <h2 class="account__content--title h3 mb-20">Tra cứu đơn hàng của bạn</h2>
                        <form class="product__view--search__form" action="{{ route('searchOrder') }}" method="get">
                            <label>
                                <input class="product__view--search__input border-0" placeholder="số điện thoại"
                                    name="key" type="text" style="background: #dddddd;">
                            </label>
                            <button class="product__view--search__btn" aria-label="search btn" type="submit">
                                <svg class="product__items--action__btn--svg" xmlns="http://www.w3.org/2000/svg"
                                    width="22.51" height="20.443" viewBox="0 0 512 512">
                                    <path d="M221.09 64a157.09 157.09 0 10157.09 157.09A157.1 157.1 0 00221.09 64z"
                                        fill="none" stroke="currentColor" stroke-miterlimit="10" stroke-width="32">
                                    </path>
                                    <path fill="none" stroke="currentColor" stroke-linecap="round" stroke-miterlimit="10"
                                        stroke-width="32" d="M338.29 338.29L448 448"></path>
                                </svg>
                            </button>
                        </form>
                        @if (isset($orders))
                            @foreach ($orders as $order)
                            {{-- @dd($order); --}}
                                <ul class="account__menu" style="margin-top: 20px">
                                    <li class="account__menu--list ">Tên khách hàng: {{$order->billing_name}}</li>
                                    <li class="account__menu--list">Số điện thoại: {{$order->billing_phone}}</li>
                                    <li class="account__menu--list">Tổng hóa đơn:  {{ number_format($order->billing_total, 0) }}đ</li>
                                </ul>
                            @endforeach
                        @endif
                    </div>
                    <div class="account__wrapper">
                        <div class="account__content">
                            <h2 class="account__content--title h3 mb-20">Danh sách</h2>
                            <div class="account__table--area">
                                @if (isset($orders))
                                    @foreach ($orders as $order)
                                            <table class="account__table" style="margin-top: 15px">
                                                <thead class="account__table--header">
                                                    <tr class="account__table--header__child">
                                                        <th class="account__table--header__child--items">Tên sản phẩm</th>
                                                        <th class="account__table--header__child--items">Hình ảnh</th>
                                                        <th class="account__table--header__child--items">Đơn giá</th>
                                                        <th class="account__table--header__child--items">Trạng thái</th>
                                                    </tr>
                                                </thead>
                                                <tbody class="account__table--body mobile__none">

                                                    @foreach ($order->products as $product)
                                                    {{-- @dd($order); --}}
                                                        <tr class="account__table--body__child">
                                                            <td class="account__table--body__child--items">{{$product->name}}</td>
                                                            <td class="account__table--body__child--items"><img
                                                                class="product__items--img" style="height: 100px;"
                                                                src="{{ Voyager::image($product->thumbnail('box', 'image')) }}"
                                                                alt="{{ $product->name }}">
                                                            </td>
                                                            <td class="account__table--body__child--items"> {{ number_format($product->price, 0) }}</td>
                                                            <td class="account__table--body__child--items"> @if($order->shipped == 1) Đã giao @else Chưa giao @endif</td>
                                                        </tr>
                                                    @endforeach
                                                </tbody>
                                                @foreach ($order->products as $product)
                                                <tbody class="account__table--body mobile__block">
                                                    <tr class="account__table--body__child">
                                                        <td class="account__table--body__child--items">
                                                            <strong>Tên sản phẩm</strong>
                                                            <span>{{$product->name}}</span>
                                                        </td>
                                                        <td class="account__table--body__child--items">
                                                            <strong>Hình ảnh</strong>
                                                            <span><img
                                                                class="product__items--img" style="height: 100px;"
                                                                src="{{ Voyager::image($product->thumbnail('box', 'image')) }}"
                                                                alt="{{ $product->name }}"></span>
                                                        </td>
                                                        <td class="account__table--body__child--items">
                                                            <strong>Đơn giá</strong>
                                                            <span>{{ number_format($product->price, 0) }}</span>
                                                        </td>
                                                        <td class="account__table--body__child--items">
                                                            <strong>Trạng thái</strong>
                                                            <span>@if($order->shipped == 1) Đã giao @else Chưa giao @endif</span>
                                                        </td>

                                                    </tr>

                                                </tbody>
                                                @endforeach
                                            </table>
                                        
                                    @endforeach
                                @else
                                @endif
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End contact section -->



    </main>
@endsection
