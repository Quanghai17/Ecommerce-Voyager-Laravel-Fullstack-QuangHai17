@extends('frontend.layouts.default')

@section('content')
    {{-- @dd($product); --}}
    <main class="main__content_wrapper">
        <!-- Start breadcrumb section -->
        <section class="breadcrumb__section breadcrumb__bg"
            style="background-image: url('{{ \TCG\Voyager\Facades\Voyager::image(setting('site.breadcrumb')) }}')">
            <div class="container">
                <div class="row row-cols-1">
                    <div class="col">
                        <div class="breadcrumb__content text-center">
                            <h1 class="breadcrumb__content--title text-white mb-25">Chi tiết sản phẩm</h1>
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

        <!-- Start product details section -->
        <section class="product__details--section" style="padding-top: 5rem;">
            <div class="container">
                <div class="row row-cols-lg-2 row-cols-md-2">
                    <div class="col">
                        <div class="product__details--media">
                            <div class="product__media--preview  swiper">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <div class="product__media--preview__items">
                                            <a class="product__media--preview__items--link glightbox"
                                                data-gallery="product-media-preview"
                                                href="{{ Voyager::image($product->image) }}"><img
                                                    class="product__media--preview__items--img"
                                                    src="{{ Voyager::image($product->thumbnail('cropped', 'image')) }}"
                                                    alt="{{ $product->name }}"></a>
                                            <div class="product__media--view__icon">
                                                <a class="product__media--view__icon--link glightbox"
                                                    href="{{ Voyager::image($product->image) }}"
                                                    data-gallery="product-media-preview">
                                                    <svg class="product__items--action__btn--svg"
                                                        xmlns="http://www.w3.org/2000/svg" width="22.51" height="22.443"
                                                        viewBox="0 0 512 512">
                                                        <path
                                                            d="M221.09 64a157.09 157.09 0 10157.09 157.09A157.1 157.1 0 00221.09 64z"
                                                            fill="none" stroke="currentColor" stroke-miterlimit="10"
                                                            stroke-width="32"></path>
                                                        <path fill="none" stroke="currentColor" stroke-linecap="round"
                                                            stroke-miterlimit="10" stroke-width="32"
                                                            d="M338.29 338.29L448 448"></path>
                                                    </svg>
                                                    <span class="visually-hidden">{{ $product->name }}</span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    @if ($images)
                                        @foreach ($images as $image)
                                            <div class="swiper-slide">
                                                <div class="product__media--preview__items">
                                                    <a class="product__media--preview__items--link glightbox"
                                                        data-gallery="product-media-preview"
                                                        href="{{ Voyager::image($image) }}"><img style="height: 540px"
                                                            class="product__media--preview__items--img"
                                                            src="{{ Voyager::image($image) }}"
                                                            alt="{{ $product->name }}"></a>
                                                    <div class="product__media--view__icon">
                                                        <a class="product__media--view__icon--link glightbox"
                                                            href="{{ Voyager::image($image) }}"
                                                            data-gallery="product-media-preview">
                                                            <svg class="product__items--action__btn--svg"
                                                                xmlns="http://www.w3.org/2000/svg" width="22.51"
                                                                height="22.443" viewBox="0 0 512 512">
                                                                <path
                                                                    d="M221.09 64a157.09 157.09 0 10157.09 157.09A157.1 157.1 0 00221.09 64z"
                                                                    fill="none" stroke="currentColor"
                                                                    stroke-miterlimit="10" stroke-width="32"></path>
                                                                <path fill="none" stroke="currentColor"
                                                                    stroke-linecap="round" stroke-miterlimit="10"
                                                                    stroke-width="32" d="M338.29 338.29L448 448"></path>
                                                            </svg>
                                                            <span class="visually-hidden">{{ $product->name }}</span>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        @endforeach
                                    @endif
                                </div>
                            </div>
                            <div class="product__media--nav swiper">
                                <div class="swiper-wrapper">
                                    @if ($images)
                                        @foreach ($images as $image)
                                            <div class="swiper-slide">
                                                <div class="product__media--nav__items">
                                                    <img class="product__media--nav__items--img"
                                                        src="{{ Voyager::image($image) }}" alt="product-nav-img">
                                                </div>
                                            </div>
                                        @endforeach
                                    @endif

                                </div>
                                <div class="swiper__nav--btn swiper-button-next"></div>
                                <div class="swiper__nav--btn swiper-button-prev"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="product__details--info">
                            <form action="{{ route('cart.store') }}" method="POST">
                                @csrf()
                                <input type="hidden" name="id" value="{{ $product->id }}">
                                <input type="hidden" name="name" value="{{ $product->name }}">
                                @if ($product->promotional_price != '')
                                    <input type="hidden" name="price" value="{{ $product->promotional_price }}">
                                @else
                                    <input type="hidden" name="price" value="{{ $product->price }}">
                                @endif

                                <h2 class="product__details--info__title mb-15">{{ $product->name }}</h2>
                                <div class="product__details--info__price mb-15">
                                    @if ($product->promotional_price != '')
                                        <span class="current__price">{{ number_format($product->promotional_price, 0) }}
                                            đ</span>
                                        <span class="old__price"> {{ number_format($product->price, 0) }} đ</span>
                                    @else
                                        <span class="current__price">Giá: {{ number_format($product->price, 0) }} đ</span>
                                    @endif
                                </div>
                                <div class="product__items--rating d-flex align-items-center mb-15">
                                    <ul class="d-flex">
                                        @for ($i = 0; $i < $product->evaluate; $i++)
                                            <li class="product__items--rating__list">
                                                <span class="product__items--rating__icon">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="16.105"
                                                        height="14.732" viewBox="0 0 10.105 9.732">
                                                        <path data-name="star - Copy"
                                                            d="M9.837,3.5,6.73,3.039,5.338.179a.335.335,0,0,0-.571,0L3.375,3.039.268,3.5a.3.3,0,0,0-.178.514L2.347,6.242,1.813,9.4a.314.314,0,0,0,.464.316L5.052,8.232,7.827,9.712A.314.314,0,0,0,8.292,9.4L7.758,6.242l2.257-2.231A.3.3,0,0,0,9.837,3.5Z"
                                                            transform="translate(0 -0.018)" fill="currentColor" />
                                                    </svg>
                                                </span>
                                            </li>
                                        @endfor
                                        @for ($i = 0; $i < 5 - $product->evaluate; $i++)
                                            <li class="product__items--rating__list">
                                                <span class="product__items--rating__icon">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="16.105"
                                                        height="14.732" viewBox="0 0 10.105 9.732">
                                                        <path data-name="star - Copy"
                                                            d="M9.837,3.5,6.73,3.039,5.338.179a.335.335,0,0,0-.571,0L3.375,3.039.268,3.5a.3.3,0,0,0-.178.514L2.347,6.242,1.813,9.4a.314.314,0,0,0,.464.316L5.052,8.232,7.827,9.712A.314.314,0,0,0,8.292,9.4L7.758,6.242l2.257-2.231A.3.3,0,0,0,9.837,3.5Z"
                                                            transform="translate(0 -0.018)" fill="#c7c5c2" />
                                                    </svg>
                                                </span>
                                            </li>
                                        @endfor

                                    </ul>
                                    <span class="product__items--rating__count--number">({{ $product->evaluate }}
                                        sao)</span>
                                </div>
                                {{-- @dd($product); --}}
                                <p class="product__details--info__desc mb-20">{{ $product->details }}</p>
                                <div class="product__variant">
                                    <div class="product__variant--list quantity d-flex align-items-center mb-20">
                                        <div class="quantity__box">
                                            <button type="button"
                                                class="quantity__value quickview__value--quantity decrease"
                                                aria-label="quantity value" value="Decrease Value">-</button>
                                            <label>
                                                <input type="number" class="quantity__number quickview__value--number"
                                                    name="qty" value="1" data-counter />
                                            </label>
                                            <button type="button"
                                                class="quantity__value quickview__value--quantity increase"
                                                aria-label="quantity value" value="Increase Value">+</button>
                                        </div>
                                       
                                            <button class="btn quickview__cart--btn" type="submit"
                                                style="margin-left: 20px;">Thêm vào giỏ
                                                hàng</button>
                                            </form>
                                            <form action="{{ route('buynow') }}" method="POST">
                                                @csrf()
                                                <input type="hidden" name="id" value="{{ $product->id }}">
                                                <input type="hidden" name="qty" value="1">
                                                <input type="hidden" name="name" value="{{ $product->name }}">
                                                @if ($product->promotional_price != '')
                                                    <input type="hidden" name="price"
                                                        value="{{ $product->promotional_price }}">
                                                @else
                                                    <input type="hidden" name="price" value="{{ $product->price }}">
                                                @endif
                                                <button class="btn quickview__cart--btn"
                                                    style="margin-left: 10px"
                                                    type="submit">Thanh toán</button>

                                            </form>
                                       

                                    </div>

                                    <div class="product__variant--list mb-15">
                                        <div class="product__details--info__meta">
                                            <p class="product__details--info__meta--list"><strong>Số lượng: </strong>
                                                <span>{{ $product->quantity }} </span>
                                            </p>
                                            <p class="product__details--info__meta--list"><strong>Đã bán: </strong>
                                                <span>{{ $product->quantity_purchased }} </span>
                                            </p>
                                            <p class="product__details--info__meta--list"><strong>Tình trạng:</strong>
                                                <span>
                                                    @if ($product->quantity > 0)
                                                        còn hàng
                                                    @else
                                                        hết hàng
                                                    @endif
                                                </span>
                                            </p>
                                            <p class="product__details--info__meta--list"><strong>Danh mục:</strong>
                                                <a
                                                    href="{{ route('products', ['category' => $category->slug]) }}"><span>{{ $category->name }}</span></a>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End product details section -->

        <!-- Start product details tab section -->
        <section class="product__details--tab__section" style="padding: 5rem 0;">
            <div class="container">
                <div class="row row-cols-1">
                    <div class="col">
                        <div class="product__details--tab__inner border-radius-10">
                            <div class="tab_content">
                                <div id="description" class="tab_pane active show">
                                    <div class="product__tab--content">
                                        <div class="product__tab--content__step mb-30">
                                            <h2 class="product__reviews--header__title h3 mb-30">Mô tả sản phẩm</h2>
                                            <p class="product__tab--content__desc">{!! $product->description !!}</p>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        {{-- @dd({{url()->current()}}); --}}
                        {{-- <div class="product__details--tab__inner border-radius-10">
                            <div class="tab_content">
                                <div class="tab_pane active show">
                                    <div class="product__tab--content">
                                        <div class="product__tab--content__step mb-30">

                                            <div class="fb-comments" data-href="{{url()->current()}}" data-width="800" data-numposts="5"></div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div> --}}
                    </div>
                </div>

            </div>
        </section>
        <!-- End product details tab section -->
        <!-- Start product details tab section -->
        <section class="product__details--tab__section" style="padding-bottom: 5rem;">
            <div class="container">
                <div class="row row-cols-1">
                    <div class="col">

                        <div class="product__details--tab__inner border-radius-10">
                            <div class="tab_content">

                                <div id="reviews" class="tab_pane active show">
                                    <div class="product__reviews">
                                        <div class="product__reviews--header">
                                            <h2 class="product__reviews--header__title h3 mb-30">Đánh giá cho
                                                {{ $product->name }}</h2>
                                            <div class="reviews__ratting">
                                                <div class="row">
                                                    <div class="col-lg-5 col-md-4">
                                                        <div class="footer__widget"
                                                            style="text-align: center;display: grid;justify-content: center;">
                                                            <h2
                                                                style="margin-bottom: 5px;font-weight: 600;font-family: 'Lato';">
                                                                {{ $product->evaluate }}/5</h2>
                                                            <ul class="d-flex">
                                                                @for ($i = 0; $i < $product->evaluate; $i++)
                                                                    <li class="product__items--rating__list">
                                                                        <span class="product__items--rating__icon">
                                                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                                                width="16.105" height="14.732"
                                                                                viewBox="0 0 10.105 9.732">
                                                                                <path data-name="star - Copy"
                                                                                    d="M9.837,3.5,6.73,3.039,5.338.179a.335.335,0,0,0-.571,0L3.375,3.039.268,3.5a.3.3,0,0,0-.178.514L2.347,6.242,1.813,9.4a.314.314,0,0,0,.464.316L5.052,8.232,7.827,9.712A.314.314,0,0,0,8.292,9.4L7.758,6.242l2.257-2.231A.3.3,0,0,0,9.837,3.5Z"
                                                                                    transform="translate(0 -0.018)"
                                                                                    fill="currentColor" />
                                                                            </svg>
                                                                        </span>
                                                                    </li>
                                                                @endfor
                                                                @for ($i = 0; $i < 5 - $product->evaluate; $i++)
                                                                    <li class="product__items--rating__list">
                                                                        <span class="product__items--rating__icon">
                                                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                                                width="16.105" height="14.732"
                                                                                viewBox="0 0 10.105 9.732">
                                                                                <path data-name="star - Copy"
                                                                                    d="M9.837,3.5,6.73,3.039,5.338.179a.335.335,0,0,0-.571,0L3.375,3.039.268,3.5a.3.3,0,0,0-.178.514L2.347,6.242,1.813,9.4a.314.314,0,0,0,.464.316L5.052,8.232,7.827,9.712A.314.314,0,0,0,8.292,9.4L7.758,6.242l2.257-2.231A.3.3,0,0,0,9.837,3.5Z"
                                                                                    transform="translate(0 -0.018)"
                                                                                    fill="#c7c5c2" />
                                                                            </svg>
                                                                        </span>
                                                                    </li>
                                                                @endfor
                                                            </ul>
                                                            {{-- <p>(2 đánh giá)</p> --}}
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-6 col-md-4 ">
                                                        <div class="">
                                                            <ul style="">
                                                                <li class="d-flex">
                                                                    <span style="margin-right: 6px;">5</span>
                                                                    <span class="product__items--rating__icon">
                                                                        <svg xmlns="http://www.w3.org/2000/svg"
                                                                            width="16.105" height="14.732"
                                                                            viewBox="0 0 10.105 9.732">
                                                                            <path data-name="star - Copy"
                                                                                d="M9.837,3.5,6.73,3.039,5.338.179a.335.335,0,0,0-.571,0L3.375,3.039.268,3.5a.3.3,0,0,0-.178.514L2.347,6.242,1.813,9.4a.314.314,0,0,0,.464.316L5.052,8.232,7.827,9.712A.314.314,0,0,0,8.292,9.4L7.758,6.242l2.257-2.231A.3.3,0,0,0,9.837,3.5Z"
                                                                                transform="translate(0 -0.018)"
                                                                                fill="currentColor"></path>
                                                                        </svg>
                                                                    </span>
                                                                    <div class="woocustom_review_row">
                                                                        <span class="woocustom_rating_bar">
                                                                            <span style="background-color: #eee"
                                                                                class="woocustom_scala_rating">
                                                                                <span class="woocustom_perc_rating"
                                                                                    style="width: 95%;background-color: #f5a623"></span>
                                                                            </span>
                                                                        </span>
                                                                    </div>
                                                                </li>
                                                                <li class="d-flex">
                                                                    <span style="margin-right: 6px;">4</span>
                                                                    <span class="product__items--rating__icon">
                                                                        <svg xmlns="http://www.w3.org/2000/svg"
                                                                            width="16.105" height="14.732"
                                                                            viewBox="0 0 10.105 9.732">
                                                                            <path data-name="star - Copy"
                                                                                d="M9.837,3.5,6.73,3.039,5.338.179a.335.335,0,0,0-.571,0L3.375,3.039.268,3.5a.3.3,0,0,0-.178.514L2.347,6.242,1.813,9.4a.314.314,0,0,0,.464.316L5.052,8.232,7.827,9.712A.314.314,0,0,0,8.292,9.4L7.758,6.242l2.257-2.231A.3.3,0,0,0,9.837,3.5Z"
                                                                                transform="translate(0 -0.018)"
                                                                                fill="currentColor"></path>
                                                                        </svg>
                                                                    </span>
                                                                    <div class="woocustom_review_row">
                                                                        <span class="woocustom_rating_bar">
                                                                            <span style="background-color: #eee"
                                                                                class="woocustom_scala_rating">
                                                                                <span class="woocustom_perc_rating"
                                                                                    style="width: 67%;background-color: #f5a623"></span>
                                                                            </span>
                                                                        </span>
                                                                    </div>
                                                                </li>
                                                                <li class="d-flex">
                                                                    <span style="margin-right: 6px;">3</span>
                                                                    <span class="product__items--rating__icon">
                                                                        <svg xmlns="http://www.w3.org/2000/svg"
                                                                            width="16.105" height="14.732"
                                                                            viewBox="0 0 10.105 9.732">
                                                                            <path data-name="star - Copy"
                                                                                d="M9.837,3.5,6.73,3.039,5.338.179a.335.335,0,0,0-.571,0L3.375,3.039.268,3.5a.3.3,0,0,0-.178.514L2.347,6.242,1.813,9.4a.314.314,0,0,0,.464.316L5.052,8.232,7.827,9.712A.314.314,0,0,0,8.292,9.4L7.758,6.242l2.257-2.231A.3.3,0,0,0,9.837,3.5Z"
                                                                                transform="translate(0 -0.018)"
                                                                                fill="currentColor"></path>
                                                                        </svg>
                                                                    </span>
                                                                    <div class="woocustom_review_row">
                                                                        <span class="woocustom_rating_bar">
                                                                            <span style="background-color: #eee"
                                                                                class="woocustom_scala_rating">
                                                                                <span class="woocustom_perc_rating"
                                                                                    style="width: 20%;background-color: #f5a623"></span>
                                                                            </span>
                                                                        </span>
                                                                    </div>
                                                                </li>
                                                                <li class="d-flex">
                                                                    <span style="margin-right: 6px;">2</span>
                                                                    <span class="product__items--rating__icon">
                                                                        <svg xmlns="http://www.w3.org/2000/svg"
                                                                            width="16.105" height="14.732"
                                                                            viewBox="0 0 10.105 9.732">
                                                                            <path data-name="star - Copy"
                                                                                d="M9.837,3.5,6.73,3.039,5.338.179a.335.335,0,0,0-.571,0L3.375,3.039.268,3.5a.3.3,0,0,0-.178.514L2.347,6.242,1.813,9.4a.314.314,0,0,0,.464.316L5.052,8.232,7.827,9.712A.314.314,0,0,0,8.292,9.4L7.758,6.242l2.257-2.231A.3.3,0,0,0,9.837,3.5Z"
                                                                                transform="translate(0 -0.018)"
                                                                                fill="currentColor"></path>
                                                                        </svg>
                                                                    </span>
                                                                    <div class="woocustom_review_row">
                                                                        <span class="woocustom_rating_bar">
                                                                            <span style="background-color: #eee"
                                                                                class="woocustom_scala_rating">
                                                                                <span class="woocustom_perc_rating"
                                                                                    style="width: 20%;background-color: #f5a623"></span>
                                                                            </span>
                                                                        </span>
                                                                    </div>
                                                                </li>
                                                                <li class="d-flex">
                                                                    <span style="margin-right: 6px;">1</span>
                                                                    <span class="product__items--rating__icon">
                                                                        <svg xmlns="http://www.w3.org/2000/svg"
                                                                            width="16.105" height="14.732"
                                                                            viewBox="0 0 10.105 9.732">
                                                                            <path data-name="star - Copy"
                                                                                d="M9.837,3.5,6.73,3.039,5.338.179a.335.335,0,0,0-.571,0L3.375,3.039.268,3.5a.3.3,0,0,0-.178.514L2.347,6.242,1.813,9.4a.314.314,0,0,0,.464.316L5.052,8.232,7.827,9.712A.314.314,0,0,0,8.292,9.4L7.758,6.242l2.257-2.231A.3.3,0,0,0,9.837,3.5Z"
                                                                                transform="translate(0 -0.018)"
                                                                                fill="currentColor"></path>
                                                                        </svg>
                                                                    </span>
                                                                    <div class="woocustom_review_row">
                                                                        <span class="woocustom_rating_bar">
                                                                            <span style="background-color: #eee"
                                                                                class="woocustom_scala_rating">
                                                                                <span class="woocustom_perc_rating"
                                                                                    style="width: 5%;background-color: #f5a623"></span>
                                                                            </span>
                                                                        </span>
                                                                    </div>
                                                                </li>
                                                            </ul>

                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>

                                        <div class="reviews__comment--area">
                                            {{-- <div class="reviews__comment--list d-flex">
                                                <div class="reviews__comment--thumb">
                                                    <img src="{{ asset('assets/img/user.png') }}" alt="comment-thumb">
                                                </div>
                                                <div class="reviews__comment--content">
                                                    <div class="reviews__comment--top d-flex justify-content-between">
                                                        <div class="reviews__comment--top__left">
                                                            <h3 class="reviews__comment--content__title h4">Nguyễn Văn A
                                                            </h3>
                                                            <ul class="reviews__ratting d-flex">
                                                                <li class="reviews__ratting--list">
                                                                    <span class="reviews__ratting--icon">
                                                                        <svg xmlns="http://www.w3.org/2000/svg"
                                                                            width="14.105" height="12.732"
                                                                            viewBox="0 0 10.105 9.732">
                                                                            <path data-name="star - Copy"
                                                                                d="M9.837,3.5,6.73,3.039,5.338.179a.335.335,0,0,0-.571,0L3.375,3.039.268,3.5a.3.3,0,0,0-.178.514L2.347,6.242,1.813,9.4a.314.314,0,0,0,.464.316L5.052,8.232,7.827,9.712A.314.314,0,0,0,8.292,9.4L7.758,6.242l2.257-2.231A.3.3,0,0,0,9.837,3.5Z"
                                                                                transform="translate(0 -0.018)"
                                                                                fill="currentColor"></path>
                                                                        </svg>
                                                                    </span>
                                                                </li>
                                                                <li class="reviews__ratting--list">
                                                                    <span class="reviews__ratting--icon">
                                                                        <svg xmlns="http://www.w3.org/2000/svg"
                                                                            width="14.105" height="12.732"
                                                                            viewBox="0 0 10.105 9.732">
                                                                            <path data-name="star - Copy"
                                                                                d="M9.837,3.5,6.73,3.039,5.338.179a.335.335,0,0,0-.571,0L3.375,3.039.268,3.5a.3.3,0,0,0-.178.514L2.347,6.242,1.813,9.4a.314.314,0,0,0,.464.316L5.052,8.232,7.827,9.712A.314.314,0,0,0,8.292,9.4L7.758,6.242l2.257-2.231A.3.3,0,0,0,9.837,3.5Z"
                                                                                transform="translate(0 -0.018)"
                                                                                fill="currentColor"></path>
                                                                        </svg>
                                                                    </span>
                                                                </li>
                                                                <li class="reviews__ratting--list">
                                                                    <span class="reviews__ratting--icon">
                                                                        <svg xmlns="http://www.w3.org/2000/svg"
                                                                            width="14.105" height="12.732"
                                                                            viewBox="0 0 10.105 9.732">
                                                                            <path data-name="star - Copy"
                                                                                d="M9.837,3.5,6.73,3.039,5.338.179a.335.335,0,0,0-.571,0L3.375,3.039.268,3.5a.3.3,0,0,0-.178.514L2.347,6.242,1.813,9.4a.314.314,0,0,0,.464.316L5.052,8.232,7.827,9.712A.314.314,0,0,0,8.292,9.4L7.758,6.242l2.257-2.231A.3.3,0,0,0,9.837,3.5Z"
                                                                                transform="translate(0 -0.018)"
                                                                                fill="currentColor"></path>
                                                                        </svg>
                                                                    </span>
                                                                </li>
                                                                <li class="reviews__ratting--list">
                                                                    <span class="reviews__ratting--icon">
                                                                        <svg xmlns="http://www.w3.org/2000/svg"
                                                                            width="14.105" height="12.732"
                                                                            viewBox="0 0 10.105 9.732">
                                                                            <path data-name="star - Copy"
                                                                                d="M9.837,3.5,6.73,3.039,5.338.179a.335.335,0,0,0-.571,0L3.375,3.039.268,3.5a.3.3,0,0,0-.178.514L2.347,6.242,1.813,9.4a.314.314,0,0,0,.464.316L5.052,8.232,7.827,9.712A.314.314,0,0,0,8.292,9.4L7.758,6.242l2.257-2.231A.3.3,0,0,0,9.837,3.5Z"
                                                                                transform="translate(0 -0.018)"
                                                                                fill="currentColor"></path>
                                                                        </svg>
                                                                    </span>
                                                                </li>
                                                                <li class="reviews__ratting--list">
                                                                    <span class="reviews__ratting--icon">
                                                                        <svg xmlns="http://www.w3.org/2000/svg"
                                                                            width="14.105" height="12.732"
                                                                            viewBox="0 0 10.105 9.732">
                                                                            <path data-name="star - Copy"
                                                                                d="M9.837,3.5,6.73,3.039,5.338.179a.335.335,0,0,0-.571,0L3.375,3.039.268,3.5a.3.3,0,0,0-.178.514L2.347,6.242,1.813,9.4a.314.314,0,0,0,.464.316L5.052,8.232,7.827,9.712A.314.314,0,0,0,8.292,9.4L7.758,6.242l2.257-2.231A.3.3,0,0,0,9.837,3.5Z"
                                                                                transform="translate(0 -0.018)"
                                                                                fill="currentColor"></path>
                                                                        </svg>
                                                                    </span>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <p class="reviews__comment--content__desc">Sản phẩm rất tốt và hiệu quả
                                                    </p>
                                                </div>
                                            </div> --}}
                                            <div class="fb-comments" data-href="{{ url()->current() }}"
                                                data-width="1000" data-numposts="5"></div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </section>
        <!-- End product details tab section -->

        <!-- Start product section -->
        <section class="product__section product__section--style3" style="padding: 5rem 0;">
            <div class="container product3__section--container">
                <div class="section__heading3 text-center mb-40">
                    <h2 class="section__heading3--maintitle">Sản phẩm tương tự</h2>
                </div>
                <div
                    class="product__section--inner product3__section--inner__padding product__section--style3__inner product__swiper--activation swiper">
                    <div class="swiper-wrapper">
                        @foreach ($mightLike as $product)
                            <div class="swiper-slide">
                                <div class="product__items product__bg">
                                    <div class="product__items--thumbnail" style="height: 410x">
                                        <a class="product__items--link"
                                            href="{{ route('products.show', $product->slug) }}"><img
                                                class="product__items--img"
                                                src="{{ Voyager::image($product->thumbnail('box', 'image')) }}"
                                                alt="{{ $product->name }}">
                                            <div
                                                class="product__categories--content d-flex justify-content-between align-items-center">
                                                <div class="product__categories--content__left">
                                                    <h3 class="product__categories--content__maintitle"
                                                        style="height: 60px;">
                                                        {{ $product->name }}</h3>
                                                    <div
                                                        class="product__items--sold__stocks d-flex justify-content-between">
                                                        @if ($product->promotional_price != '')
                                                            <span class="product__categories--content__subtitle">
                                                                {{ number_format($product->promotional_price, 0) }}đ
                                                            </span>
                                                            <span class="product__categories--content__subtitle"
                                                                style="text-decoration: line-through; color:black">
                                                                {{ number_format($product->price, 0) }}đ
                                                            </span>
                                                        @else
                                                            <span class="product__categories--content__subtitle">
                                                                Giá:
                                                                {{ number_format($product->price, 0) }}
                                                            </span>
                                                        @endif
                                                        {{-- <form action="{{ route('buynow') }}" method="POST">
                                                            @csrf()
                                                            <input type="hidden" name="id"
                                                                value="{{ $product->id }}">
                                                            <input type="hidden" name="qty" value="1">
                                                            <input type="hidden" name="name"
                                                                value="{{ $product->name }}">
                                                            @if ($product->promotional_price != '')
                                                                <input type="hidden" name="price"
                                                                    value="{{ $product->promotional_price }}">
                                                            @else
                                                                <input type="hidden" name="price"
                                                                    value="{{ $product->price }}">
                                                            @endif
                                                            <button class="btn deals__banner--content__btn"
                                                                style="line-height: 3.4rem; height: 3.4rem;  padding: 0 0.8rem;"
                                                                type="submit">Mua ngay</button>
                                                        </form> --}}
                                                        <a href="{{ route('products.show', $product->slug) }}" class="btn deals__banner--content__btn" style="line-height: 3.4rem; height: 3.4rem;  padding: 0 0.8rem;" type="submit">Mua ngay</a>
                                                    </div>
                                                    <div
                                                        class="product__items--sold__stocks d-flex justify-content-between">
                                                        <span class="product__items--sold__stocks--text">đã bán:
                                                            {{ $product->quantity_purchased }}</span>
                                                        <span class="product__items--sold__stocks--text">số lượng :
                                                            {{ $product->quantity }}</span>
                                                    </div>
                                                </div>

                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                    <div class="swiper__nav--btn swiper-button-next"></div>
                    <div class="swiper__nav--btn swiper-button-prev"></div>
                </div>
            </div>
        </section>
        <!-- End product section -->
    </main>
@endsection
