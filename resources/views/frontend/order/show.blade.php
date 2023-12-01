@extends('frontend.layouts.default')
@section('content')
    <main class="main__content_wrapper">

        <!-- Start breadcrumb section -->
        <section class="breadcrumb__section breadcrumb__bg" style="background-image: url('{{ \TCG\Voyager\Facades\Voyager::image(setting('site.breadcrumb')) }}')">
            <div class="container">
                <div class="row row-cols-1">
                    <div class="col">
                        <div class="breadcrumb__content text-center">
                            <h1 class="breadcrumb__content--title text-white mb-25">Tra cứu đơn hàng</h1>
                            <ul class="breadcrumb__content--menu d-flex justify-content-center">
                                <li class="breadcrumb__content--menu__items"><a class="text-white" href="{{route('home')}}">Trang chủ</a>
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
                                <input class="product__view--search__input border-0" placeholder="số điện thoại" name="key" type="text" style="background: #dddddd;">
                            </label>
                            <button class="product__view--search__btn" aria-label="search btn" type="submit">
                                <svg class="product__items--action__btn--svg" xmlns="http://www.w3.org/2000/svg" width="22.51" height="20.443" viewBox="0 0 512 512">
                                    <path d="M221.09 64a157.09 157.09 0 10157.09 157.09A157.1 157.1 0 00221.09 64z" fill="none" stroke="currentColor" stroke-miterlimit="10" stroke-width="32"></path>
                                    <path fill="none" stroke="currentColor" stroke-linecap="round" stroke-miterlimit="10" stroke-width="32" d="M338.29 338.29L448 448"></path>
                                </svg>
                            </button>
                        </form>
                    </div>
                    <div class="account__wrapper">
                        <div class="account__content">
                            <h2 class="account__content--title h3 mb-20">Danh sách</h2>
                            <div class="account__table--area">
                               
                                <table class="account__table">
                                    <thead class="account__table--header">
                                        <tr class="account__table--header__child">
                                            <th class="account__table--header__child--items">Tên sản phẩm</th>
                                            <th class="account__table--header__child--items">Hình ảnh</th>
                                            <th class="account__table--header__child--items">Số lượng</th>
                                            <th class="account__table--header__child--items">Thành tiền</th>
                                            <th class="account__table--header__child--items">Trạng thái</th>	 	 	 	
                                        </tr>
                                    </thead>
                                    <tbody class="account__table--body mobile__none">
                                        {{-- @dd($orders);
                                        @foreach ($orders as $item)
                                        <tr class="account__table--body__child">
                                            <td class="account__table--body__child--items">#2014</td>
                                            <td class="account__table--body__child--items">November 24, 2022</td>
                                            <td class="account__table--body__child--items">Paid</td>
                                            <td class="account__table--body__child--items">Unfulfilled</td>
                                            <td class="account__table--body__child--items">$40.00 USD</td>
                                        </tr>
                                        @endforeach --}}
                                    </tbody>
                                    <tbody class="account__table--body mobile__block">
                                        <tr class="account__table--body__child">
                                            <td class="account__table--body__child--items">
                                                <strong>Tên sản phẩm</strong>
                                                <span>#2014</span>
                                            </td>
                                            <td class="account__table--body__child--items">
                                                <strong>Số lượng</strong>
                                                <span>November 24, 2022</span>
                                            </td>
                                            <td class="account__table--body__child--items">
                                                <strong>Thành tiền</strong>
                                                <span>Paid</span>
                                            </td>
                                            <td class="account__table--body__child--items">
                                                <strong>Trạng thái</strong>
                                                <span>Unfulfilled</span>
                                            </td>
                                           
                                        </tr>
                                        
                                    </tbody>
                                </table>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End contact section -->

       

    </main>
@endsection
