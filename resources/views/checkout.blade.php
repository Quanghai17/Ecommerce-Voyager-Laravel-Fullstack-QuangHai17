@extends('frontend.layouts.default')
@extends('layouts.app')
@section('content')
    {{-- @include('partials.errors') --}}
    <!-- Start checkout page area -->
    <div class="checkout__page--area" style="border: 1px solid var(--border-color2);" x-data="{ externalCheckboxValue: 0 }">
        <div class="container">
            <div class="checkout__page--inner d-flex">
                <div class="main checkout__mian">
                    <header class="main__header checkout__mian--header mb-30">
                        <h1 class="main__logo--title">
                            <a class="logo logo__left mb-20" href="{{ route('home') }}">
                                <img style="max-width: 50%;" src="{{ \TCG\Voyager\Facades\Voyager::image(setting('site.logo')) }}" alt="logo">
                            </a>
                        </h1>
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
                                                                <span
                                                                    class="product__thumbnail--quantity">{{ $item->qty }}</span>
                                                            </div>
                                                            <div class="product__description">
                                                                <h3 class="product__description--name h4"><a
                                                                        href="#">{{ $item->model->name }}</a>
                                                                </h3>

                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td class=" summary__table--list">
                                                        <span
                                                            class="cart__price">{{ number_format($item->price, 0) }}đ</span>
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
                                                <input name="coupon_code"
                                                    class="checkout__discount--code__input--field border-radius-5"
                                                    placeholder="Mã giảm giá" type="text">
                                            </label>
                                            <button class="checkout__discount--code__btn btn border-radius-5"
                                                type="submit">Sử dụng</button>
                                        </form>
                                    @endif
                                </div>
                                <div class="checkout__total">
                                    <table class="checkout__total--table">
                                        <tbody class="checkout__total--body">
                                            <tr class="checkout__total--items">
                                                <td class="checkout__total--title text-left">Tạm tính </td>
                                                <td class="checkout__total--amount text-right">
                                                    {{ number_format($newSubtotal, 0) }} đ</td>
                                            </tr>
                                            <tr class="checkout__total--items">
                                                <td class="checkout__total--title text-left">Vận chuyển</td>
                                                <td class="checkout__total--calculated__text text-right">thanh toán khi nhận
                                                    hàng
                                                </td>
                                            </tr>
                                            <tr class="checkout__total--items">
                                                <td class="checkout__total--title text-left">Thanh toán online</td>
                                                <td class="checkout__total--calculated__text text-right">
                                                    <form action="{{ route('momo_payment') }}" method="post">
                                                        @csrf
                                                        <input type="hidden" name="total_momo"
                                                            value="{{ $newSubtotal }}">
                                                        <button class="checkout__discount--code__btn btn border-radius-5"
                                                            name="payUrl" type="submit"
                                                            style="background-image: url('{{ asset('assets/img/download.png') }}');background-size: cover;"></button>
                                                    </form>
                                                    {{-- <div x-data="{ isOpen: false }">
                                                        <button @click="isOpen = true" class="checkout__discount--code__btn btn border-radius-5" style="background-image: url('{{ asset('assets/img/download.png') }}');background-size: cover;"></button>
                                                        
                                                        <div x-show="isOpen" @click.away="isOpen = false" class="popup">
                                                            <!-- Nội dung của popup -->
                                                            <div class="row row-cols-lg-2 row-cols-md-2" style=" flex-direction: column;">
                                                                <div class="col">
                                                                    <div class="product__details--media">
                                                                        <div class="product__media--preview  swiper">
                                                                            <div class="swiper-wrapper">
                                                                                <div class="swiper-slide">
                                                                                    <div class="product__media--preview__items">
                                                                                        <img class="product__media--preview__items--img" style="max-height: 40%"
                                                                                                src="{{ \TCG\Voyager\Facades\Voyager::image(setting('site.qrcode')) }}" alt="">
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col">
                                                                    <div class="product__details--info" style="text-align: left;">
                                                                        <h2 class="product__details--info__title mb-15">Hướng dẫn thanh toán momo</h2>
                                                                        <h3 class="product__details--info__title mb-15">Bước 1: Quét mã QR Code trên màn hình</h3>
                                                                        <h3 class="product__details--info__title mb-15">Bước 2: Nhập số tiền thanh toán, chuyển khoản</h3>
                                                                        <h3 class="product__details--info__title mb-15">Bước 3: Hệ thống kiểm tra và xác nhận thành công</h3>
                                                                    </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div> --}}
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tfoot class="checkout__total--footer">
                                            <tr class="checkout__total--footer__items">
                                                <td
                                                    class="checkout__total--footer__title checkout__total--footer__list text-left">
                                                    Tổng tiền </td>
                                                <td
                                                    class="checkout__total--footer__amount checkout__total--footer__list text-right">
                                                    {{ number_format($total, 0) }} đ</td>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                            </div>
                        </details>
                    </header>
                    <main class="main__content_wrapper section--padding pt-0">
                        <div id="FORM499" class='ladi-element'>
                            <form action="{{ route('checkout.store') }}" method="POST" class='ladi-form'>
                                @csrf()
                                <input type="hidden" name="postal_code" value="1234">
                                <input type="hidden" name="name_on_card" value="abc">
                                <input type="hidden" name="credit_card" value="xyz">
                                <input type="hidden" name="email" value="test@gmail.com">
                                {{-- <input type="hidden" name="externalCheckboxValue" x-bind:value="externalCheckboxValue"> --}}
                                <div class="checkout__content--step section__shipping--address">
                                    <div class="section__header mb-25">
                                        <h2 class="section__header--title h3">Địa chỉ nhận hàng</h2>
                                    </div>
                                    <div class="section__shipping--address__content">
                                        <div class="row">
                                            <div class="col-lg-6 mb-12">
                                                <div class="checkout__input--list ">
                                                    <label>
                                                        <input class="checkout__input--field border-radius-5"
                                                            name="name" required placeholder="Họ tên" type="text">
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="col-lg-6 mb-12">
                                                <div class="checkout__input--list">
                                                    <label>
                                                        <input class="checkout__input--field border-radius-5"
                                                            name="phone" required placeholder="Số điện thoại"
                                                            type="text">
                                                    </label>
                                                </div>
                                            </div>
                                            {{-- <div class="col-12 mb-12">
                                                <div class="checkout__input--list">
                                                    <label>
                                                        <input class="checkout__input--field border-radius-5" name="address"
                                                            required placeholder="Địa chỉ" type="text">
                                                    </label>
                                                </div>
                                            </div> --}}

                                            <div class="col-12 mb-12">
                                                <div class="checkout__input--list checkout__input--select select">
                                                    <label>
                                                        <div id="FORM_ITEM554" class='ladi-element'>
                                                            <div class="ladi-form-item-container">
                                                                <div class='ladi-form-item'>
                                                                    <input data-is-select-country="true" tabindex="6"
                                                                        type="hidden"
                                                                        class="checkout__input--field border-radius-5"
                                                                        name="" value="VN:Việt Nam" />
                                                                    <select tabindex="6" name="state"
                                                                        style="width: 100%;
                                                                            border: 0;
                                                                            height: 4.5rem;
                                                                            padding: 0.5rem 1.5rem 0.5rem
                                                                            rem
                                                                            ;
                                                                            border: 1px solid var(--border-color2);
                                                                            -webkit-appearance: none;
                                                                            cursor: pointer;
                                                                            padding: 0 1.5rem;
                                                                            border-radius: 0.5rem;
                                                                            margin-bottom: 10px
                                                                            "
                                                                        class="ladi-form-control ladi-form-control-select ladi-form-control-select-3"
                                                                        data-selected="" data-is-select-country="true">
                                                                        <option value="" class="ladi-hidden">
                                                                            Tỉnh/thành</option>
                                                                    </select>
                                                                    <select tabindex="6" name="district" required
                                                                        style="width: 100%;
                                                                        border: 0;
                                                                        height: 4.5rem;
                                                                        padding: 0.5rem 1.5rem 0.5rem
                                                                        rem
                                                                        ;
                                                                        border: 1px solid var(--border-color2);
                                                                        -webkit-appearance: none;
                                                                        cursor: pointer;
                                                                        padding: 0 1.5rem;
                                                                        border-radius: 0.5rem;
                                                                        margin-bottom: 10px"
                                                                        class="ladi-form-control ladi-form-control-select ladi-form-control-select-3"
                                                                        data-selected="" data-is-select-country="true">
                                                                        <option value="" class="ladi-hidden">
                                                                            Quận/huyện</option>
                                                                    </select>
                                                                    <select tabindex="6" name="ward" required
                                                                        style="width: 100%;
                                                                        border: 0;
                                                                        height: 4.5rem;
                                                                        padding: 0.5rem 1.5rem 0.5rem
                                                                        rem
                                                                        ;
                                                                        border: 1px solid var(--border-color2);
                                                                        -webkit-appearance: none;
                                                                        cursor: pointer;
                                                                        padding: 0 1.5rem;
                                                                        border-radius: 0.5rem;
                                                                        margin-bottom: 10px"
                                                                        class="ladi-form-control ladi-form-control-select ladi-form-control-select-3"
                                                                        data-selected="" data-is-select-country="true">
                                                                        <option value="" class="ladi-hidden">
                                                                            Phường/xã</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </div>
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
                                    <button type="submit" class="btn btn-success custom-border-success btn-block">Thanh
                                        toán</button>
                                </div>
                            </form>
                        </div>
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
                                    <input name="coupon_code"
                                        class="checkout__discount--code__input--field border-radius-5"
                                        placeholder="Mã giảm giá" type="text">
                                </label>
                                <button class="checkout__discount--code__btn btn border-radius-5" type="submit">Sử
                                    dụng</button>
                            </form>
                        @endif
                    </div>
                    <div class="checkout__total">
                        <table class="checkout__total--table">
                            <tbody class="checkout__total--body">
                                <tr class="checkout__total--items">
                                    <td class="checkout__total--title text-left">Tạm tính </td>
                                    <td class="checkout__total--amount text-right"> {{ number_format($newSubtotal, 0) }} đ
                                    </td>
                                </tr>
                                <tr class="checkout__total--items">
                                    <td class="checkout__total--title text-left">Vận chuyển</td>
                                    <td class="checkout__total--calculated__text text-right">thanh toán khi nhận hàng
                                    </td>
                                </tr>
                                {{-- @dd(setting('momo.status')); --}}
                                @if (setting('momo.status') == 1)
                                    <tr class="checkout__total--items">
                                        <td class="checkout__total--title text-left">Thanh toán online</td>
                                        <td class="checkout__total--calculated__text text-right">
                                            {{-- <input type="checkbox" x-model="externalCheckboxValue"> Click me --}}
                                            <form action="{{ route('momo_payment') }}" method="post">
                                                @csrf
                                                <input type="hidden" name="total_momo" value="{{ $newSubtotal }}">
                                                <button class="checkout__discount--code__btn btn border-radius-5"
                                                    name="payUrl" type="submit"
                                                    style="background-image: url('{{ asset('assets/img/download.png') }}');background-size: cover;"></button>
                                            </form>
                                            {{-- <div x-data="{ isOpen: false }">
                                                <button @click="isOpen = true" class="checkout__discount--code__btn btn border-radius-5" style="background-image: url('{{ asset('assets/img/download.png') }}');background-size: cover;"></button>
                                                <div x-show="isOpen" @click.away="isOpen = false" class="popup">
                                                    <div class="row row-cols-lg-2 row-cols-md-2">
                                                        <div class="col">
                                                            <div class="product__details--media">
                                                                <div class="product__media--preview  swiper">
                                                                    <div class="swiper-wrapper">
                                                                        <div class="swiper-slide">
                                                                            <div class="product__media--preview__items">
                                                                                <img class="product__media--preview__items--img" style="max-height: 40%"
                                                                                        src="{{ \TCG\Voyager\Facades\Voyager::image(setting('site.qrcode')) }}" alt="">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col">
                                                            <div class="product__details--info" style="text-align: left;">
                                                                <h2 class="product__details--info__title mb-15">Hướng dẫn thanh toán momo</h2>
                                                                <h3 class="product__details--info__title mb-15">Bước 1: Quét mã QR Code trên màn hình</h3>
                                                                <h3 class="product__details--info__title mb-15">Bước 2: Nhập số tiền thanh toán, chuyển khoản</h3>
                                                                <h3 class="product__details--info__title mb-15">Bước 3: Hệ thống kiểm tra và xác nhận thành công</h3>
                                                            </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div> --}}
                                        </td>
                                    </tr>
                                @endif
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

@section('scripts')
    <script id="script_lazyload" type="text/javascript">
        window.lazyload_run = function(dom, is_first, check_dom_rect) {
            if (check_dom_rect && (document.body.clientWidth <= 0 || document.body.clientheight <= 0)) {
                return setTimeout(function() {
                    window.lazyload_run(dom, is_first, check_dom_rect);
                }, 1);
            }
            var style_lazyload = document.getElementById('style_lazyload');
            var list_element_lazyload = dom.querySelectorAll(
                '.ladi-overlay, .ladi-box, .ladi-button-background, .ladi-collection-item, .ladi-countdown-background, .ladi-form-item-background, .ladi-form-label-container .ladi-form-label-item.image, .ladi-frame-background, .ladi-gallery-view-item, .ladi-gallery-control-item, .ladi-headline, .ladi-image-background, .ladi-image-compare, .ladi-list-paragraph ul li, .ladi-section-background, .ladi-survey-option-background, .ladi-survey-option-image, .ladi-tabs-background, .ladi-video-background, .ladi-banner, .ladi-spin-lucky-screen, .ladi-spin-lucky-start'
            );
            var docEventScroll = window;
            for (var i = 0; i < list_element_lazyload.length; i++) {
                var rect = list_element_lazyload[i].getBoundingClientRect();
                if (rect.x == "undefined" || rect.x == undefined || rect.y == "undefined" || rect.y == undefined) {
                    rect.x = rect.left;
                    rect.y = rect.top;
                }
                var offset_top = rect.y + window.scrollY;
                if (offset_top >= window.scrollY + window.innerHeight || window.scrollY >= offset_top +
                    list_element_lazyload[i]
                    .offsetHeight) {
                    list_element_lazyload[i].classList.add('ladi-lazyload');
                }
            }
            if (typeof style_lazyload != "undefined" && style_lazyload != undefined) {
                style_lazyload.parentElement.removeChild(style_lazyload);
            }
            var currentScrollY = window.scrollY;
            var stopLazyload = function(event) {
                if (event.type == "scroll" && window.scrollY == currentScrollY) {
                    currentScrollY = -1;
                    return;
                }
                docEventScroll.removeEventListener('scroll', stopLazyload);
                list_element_lazyload = document.getElementsByClassName('ladi-lazyload');
                while (list_element_lazyload.length > 0) {
                    list_element_lazyload[0].classList.remove('ladi-lazyload');
                }
            };
            if (is_first) {
                var scrollEventPassive = null;
                try {
                    var opts = Object.defineProperty({}, 'passive', {
                        get: function() {
                            scrollEventPassive = {
                                passive: true
                            };
                        }
                    });
                    window.addEventListener('testPassive', null, opts);
                    window.removeEventListener('testPassive', null, opts);
                } catch (e) {}
                docEventScroll.addEventListener('scroll', stopLazyload, scrollEventPassive);
            }
            return dom;
        };
        window.lazyload_run(document, true, true);
    </script>

    <script src="https://w.ladicdn.com/v2/source/ladipagev3.min.js?v=1694509235327" type="text/javascript"></script>
    <script id="script_event_data" type="application/json">{
        "FORM_ITEM551": {
            "a": "form_item",
            "bS": "text",
            "bQ": 1
        },
        "FORM_ITEM552": {
            "a": "form_item",
            "bS": "tel",
            "bQ": 1
        },
        "FORM_ITEM553": {
            "a": "form_item",
            "bS": "text",
            "bQ": 5
        },
        "FORM_ITEM554": {
            "a": "form_item",
            "bS": "select_multiple",
            "bQ": 6,
            "bv": "VN:Việt Nam"
        },
        "FORM_ITEM556": {
            "a": "form_item",
            "bS": "checkbox",
            "bQ": 14
        },
        "FORM_ITEM557": {
            "a": "form_item",
            "bS": "number",
            "bQ": 7
        },
        "FORM_ITEM558": {
            "a": "form_item",
            "bS": "number",
            "bQ": 7
        },
        "FORM_ITEM559": {
            "a": "form_item",
            "bS": "number",
            "bQ": 7
        },
        "FORM_ITEM560": {
            "a": "form_item",
            "bS": "number",
            "bQ": 7
        },
        "FORM499": {
            "a": "form",
            "bP": "6086d39d0b1fe800128394c9",
            "bM": true,
            "bK": "default",
            "bJ": "",
            "by": true,
            "bx": true
        },
        "FORM_ITEM561": {
            "a": "form_item",
            "bS": "text",
            "bQ": 10
        },
        "FORM_ITEM562": {
            "a": "form_item",
            "bS": "tel",
            "bQ": 11
        }
        }</script>
    <script id="script_ladipage_run" type="text/javascript">
        (function() {
            var run = function() {
                if (typeof window.LadiPageScript == "undefined" || typeof window.ladi == "undefined" || window
                    .ladi ==
                    undefined) {
                    setTimeout(run, 100);
                    return;
                }
                window.LadiPageApp = window.LadiPageApp || new window.LadiPageAppV2();
                window.LadiPageScript.runtime.ladipage_id = '64dc2f903f24930011189c56';
                window.LadiPageScript.runtime.publish_platform = 'WORDPRESS';
                window.LadiPageScript.runtime.version = '1694509235327';
                window.LadiPageScript.runtime.cdn_url = 'https://w.ladicdn.com/v2/source/';
                window.LadiPageScript.runtime.DOMAIN_SET_COOKIE = ["hallobaby.vn"];
                window.LadiPageScript.runtime.DOMAIN_FREE = ["preview.ladipage.me", "ldp.link", "ldp.page"];
                window.LadiPageScript.runtime.bodyFontSize = 12;
                window.LadiPageScript.runtime.store_id = "5b6823cc756abe5ec4e00082";
                window.LadiPageScript.runtime.time_zone = 7;
                window.LadiPageScript.runtime.currency = "VND";
                window.LadiPageScript.runtime.convert_replace_str = true;
                window.LadiPageScript.runtime.desktop_width = 960;
                window.LadiPageScript.runtime.mobile_width = 420;
                window.LadiPageScript.runtime.formdata = true;
                window.LadiPageScript.runtime.tracking_button_click = true;
                window.LadiPageScript.runtime.list_country = ["location.vn.min"];
                window.LadiPageScript.runtime.lang = "vi";
                window.LadiPageScript.run(true);
                window.LadiPageScript.runEventScroll();
                window.LadiPageScript.loadScript(
                    "https://w.ladicdn.com/v2/source/location.vn.min.js?v=1694509235327", {
                        defer: true
                    }, null,
                    function(ev) {
                        window.LadiPageScript.runAfterLocation();
                    });
            };
            run();
        })();
    </script>
@endsection
