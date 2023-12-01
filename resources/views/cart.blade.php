@extends('frontend.layouts.default')
@extends('layouts.app')
@section('content')
    <main class="main__content_wrapper">
        <!-- Start breadcrumb section -->
        <section class="breadcrumb__section breadcrumb__bg" style="background-image: url('{{ \TCG\Voyager\Facades\Voyager::image(setting('site.breadcrumb')) }}')">
            <div class="container">
                <div class="row row-cols-1">
                    <div class="col">
                        <div class="breadcrumb__content text-center">
                            <h1 class="breadcrumb__content--title text-white mb-25">Giỏ hàng</h1>
                            <ul class="breadcrumb__content--menu d-flex justify-content-center">
                                <li class="breadcrumb__content--menu__items"><a class="text-white"
                                        href="{{ route('home') }}">Trang chủ</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End breadcrumb section -->

        <!-- cart section start -->
        <section class="cart__section section--padding">
            <div class="container">
                @if (Cart::instance('default')->count() > 0)
                    <div class="cart__section--inner">
                        <h2 class="cart__title mb-40">Sản phẩm</h2>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="cart__table">
                                    <table class="cart__table--inner">
                                        <thead class="cart__table--header">
                                            <tr class="cart__table--header__items">
                                                <th class="cart__table--header__list">Tên sản phẩm</th>
                                                <th class="cart__table--header__list">Giá</th>
                                                <th class="cart__table--header__list">Số lượng</th>
                                                <th class="cart__table--header__list">Thành tiền</th>
                                            </tr>
                                        </thead>
                                        <tbody class="cart__table--body">
                                            @foreach (Cart::instance('default')->content() as $item)
                                            {{-- @dd($item); --}}
                                                <tr class="cart__table--body__items">
                                                    <td class="cart__table--body__list">
                                                        <div class="cart__product d-flex align-items-center">
                                                            <form
                                                                action="{{ route('cart.destroy', [$item->rowId, 'default']) }}"
                                                                method="POST" id="delete-item">
                                                                @csrf()
                                                                <button class="cart__remove--btn" aria-label="search button"
                                                                    onclick="document.getElementById('delete-item').submit();"
                                                                    type="button">
                                                                    <svg fill="currentColor"
                                                                        xmlns="http://www.w3.org/2000/svg"
                                                                        style="vertical-align: baseline;"
                                                                        viewBox="0 0 24 24" width="16px" height="16px">
                                                                        <path
                                                                            d="M 4.7070312 3.2929688 L 3.2929688 4.7070312 L 10.585938 12 L 3.2929688 19.292969 L 4.7070312 20.707031 L 12 13.414062 L 19.292969 20.707031 L 20.707031 19.292969 L 13.414062 12 L 20.707031 4.7070312 L 19.292969 3.2929688 L 12 10.585938 L 4.7070312 3.2929688 z">
                                                                        </path>
                                                                    </svg>
                                                                </button>
                                                                @method('DELETE')
                                                            </form>
                                                            <form action="{{ route('cart.save-later', $item->rowId) }}"
                                                                method="POST" id="save-later">
                                                                @csrf()
                                                            </form>

                                                            <div class="cart__thumbnail">
                                                                <a href="{{ route('products.show', $item->model->slug) }}"><img class="border-radius-5"
                                                                        src="{{ Voyager::image($item->model->image) }}"
                                                                        alt="cart-product"></a>
                                                            </div>
                                                            <div class="cart__content">
                                                                <h3 class="cart__content--title h4"><a
                                                                        href="{{ route('products.show', $item->model->slug) }}">{{ $item->model->name }}</a>
                                                                </h3>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td class="cart__table--body__list">
                                                        <span class="cart__price">{{ number_format($item->price, 0) }}
                                                            đ</span>
                                                    </td>
                                                
                                                    <td class="cart__table--body__list">
                                                        <select class='quantity' data-id='{{ $item->rowId }}' data-productQuantity='{{ $item->model->quantity }}'>
                                                            @for ($i = 1; $i < 10; $i++)
                                                                <option class="option" value="{{ $i }}" {{ $item->qty == $i ? 'selected' : '' }}>{{ $i }}</option>
                                                            @endfor
                                                        </select>
                                                    </td>
                                                    <td class="cart__table--body__list">
                                                        <span
                                                            class="cart__price end">{{ number_format($item->subtotal, 0) }}
                                                            đ</span>
                                                    </td>
                                                </tr>
                                            @endforeach
                                        </tbody>
                                    </table>

                                </div>
                                <div class="cart__summary border-radius-10">
                                    <div class="cart__summary--total mb-20">
                                        <table class="cart__summary--total__table">
                                            <tbody>
                                                <tr class="cart__summary--total__list">
                                                    <td class="cart__summary--total__title text-left">TỔNG ĐƠN HÀNG</td>
                                                    <td class="cart__summary--amount text-right">
                                                        {{ number_format(Cart::subtotal(), 0) }} đ</td>
                                                </tr>

                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="cart__summary--footer">
                                        <p class="cart__summary--footer__desc">Miễn phí giao hàng toàn quốc</p>
                                        <ul class="d-flex justify-content-between">
                                            <li><a class="cart__summary--footer__btn btn checkout"
                                                href="{{ route('products') }}">Tiếp tục mua hàng</a></li>
                                            <li><a class="cart__summary--footer__btn btn checkout"
                                                    href="{{ route('checkout.index') }}">Thanh toán</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                @else
                    <div class="coupon__code mb-30">
                        <h3 class="coupon__code--title">Chưa có sản phẩm nào trong giỏ hàng </h3>
                        <div class="coupon__code--field d-flex">
                            <button class="coupon__code--field__btn btn" type="submit"><a href="{{ route('home') }}">Tiếp
                                    tục mua hàng</a></button>
                        </div>
                    </div>
                @endif
            </div>
        </section>
        <!-- cart section end -->
    </main>
   
@endsection

@section('scripts')

<script type="text/javascript">

$(document).ready(function () {
    $('.quantity').on('change', function() {
        const id = this.getAttribute('data-id')
        console.log(id)
        const productQuantity = this.getAttribute('data-productQuantity')
        axios.patch('/cart/' + id, {quantity: this.value, productQuantity: productQuantity})
            .then(response => {
                console.log(response)
                window.location.href = '{{ route('cart.index') }}'
            }).catch(error => {
                window.location.href = '{{ route('cart.index') }}'
            })
    });
});

</script>

@endsection
