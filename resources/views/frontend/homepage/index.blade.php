@extends('frontend.layouts.default')
@section('content')
    <main class="main__content_wrapper">
        <!-- Start slider section -->
        <!-- Carousel -->
        <div id="demo" class="carousel slide" data-bs-ride="carousel">
            <div class="container">
                <!-- Indicators/dots -->
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
                    <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
                </div>
                <!-- The slideshow/carousel -->
                <div class="carousel-inner">
                    @if (count($homeBanners) > 0)
                        @foreach ($homeBanners as $key => $banner)
                            <div class="carousel-item active">
                                <img src="{{ Voyager::image($banner->image) }}" alt="Los Angeles" class="d-block"
                                    style="width:100%">
                            </div>
                        @endforeach
                    @endif
                </div>
                <!-- Left and right controls/icons -->
                <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon"></span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
                    <span class="carousel-control-next-icon"></span>
                </button>
            </div>
        </div>
        <!-- End slider section -->
        <!-- Start deals banner section -->
        <section class="deals__banner--section banner__bg">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-6 col-md-6 deals__baner--col">
                        <div class="deals__banner--content">
                            <h3 class="deals__banner--content__subtitle text__secondary">GIỚI THIỆU VỀ CHÚNG TÔI </h3>
                            <h2 class="deals__banner--content__maintitle"
                                style="font-family: REVERT;
                                font-weight: 600;">
                                {{ $about->title }}
                            </h2>
                            <p class="deals__banner--content__desc">{{ $about->excerpt }}</p>

                            <a class="btn deals__banner--content__btn" href="{{ route('about', $about->slug) }}">Xem chi
                                tiết</a>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 deals__baner--col">
                        <div class="banner__items text-right">
                            <a class="banner__items--thumbnail display-block" href="{{ route('about', $about->slug) }}"><img
                                    class="banner__items--thumbnail__img display-block"
                                    src="{{ Voyager::image($about->image) }}" alt="{{ $about->title }}"></a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End deals banner section -->

        <!-- Start categories product section -->
        <section class="product__section product__categories--section section--padding">
            <div class="container">
                <div class="section__heading text-center mb-40">

                    <h2 class="section__heading--maintitle" style="font-family: var(--font-poppins); font-weight: 600;">SẢN PHẨM NỔI BẬT</h2>
                </div>
                <div class="product__section--inner product__swiper--activation swiper">
                    <div class="swiper-wrapper">
                        @foreach ($hotProducts as $product)
                            <div class="swiper-slide">
                                <div class="product__items product__bg">
                                    <div class="product__items--thumbnail" style="height: 420px">
                                        <a class="product__items--link"
                                            href="{{ route('products.show', $product->slug) }}"><img
                                                class="product__items--img "
                                                src="{{ Voyager::image($product->thumbnail('box', 'image')) }}"
                                                alt="{{ $product->name }}">
                                            <div
                                                class="product__categories--content d-flex justify-content-between align-items-center">
                                                <div class="product__categories--content__left">
                                                    <h3 class="product__categories--content__maintitle"
                                                        style="height: 60px; ">
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
                                                            <input type="hidden" name="id" value="{{ $product->id }}">
                                                            <input type="hidden" name="qty" value="1">
                                                            <input type="hidden" name="name" value="{{ $product->name }}">
                                                            @if ($product->promotional_price != '')
                                                                <input type="hidden" name="price" value="{{ $product->promotional_price }}">
                                                            @else
                                                                <input type="hidden" name="price" value="{{ $product->price }}">
                                                            @endif
                                                            <button class="btn deals__banner--content__btn" style="line-height: 3.4rem; height: 3.4rem;  padding: 0 0.8rem;" type="submit">Mua ngay</button>
                                                            
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
                                                {{-- <div class="product__categories--icon">
                                                    <a class="offcanvas__stikcy--toolbar__btn minicart__open--btn"
                                                        href="{{ route('products.show', $product->slug) }}" data-offcanvas>
                                                        <span class="offcanvas__stikcy--toolbar__icon">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="18.51"
                                                                height="15.443" viewBox="0 0 18.51 15.443">
                                                                <path
                                                                    d="M79.963,138.379l-13.358,0-.56-1.927a.871.871,0,0,0-.6-.592l-1.961-.529a.91.91,0,0,0-.226-.03.864.864,0,0,0-.226,1.7l1.491.4,3.026,10.919a1.277,1.277,0,1,0,1.844,1.144.358.358,0,0,0,0-.049h6.163c0,.017,0,.034,0,.049a1.277,1.277,0,1,0,1.434-1.267c-1.531-.247-7.783-.55-7.783-.55l-.205-.8h7.8a.9.9,0,0,0,.863-.651l1.688-5.943h.62a.936.936,0,1,0,0-1.872Zm-9.934,6.474H68.568c-.04,0-.1.008-.125-.085-.034-.118-.082-.283-.082-.283l-1.146-4.037a.061.061,0,0,1,.011-.057.064.064,0,0,1,.053-.025h1.777a.064.064,0,0,1,.063.051l.969,4.34,0,.013a.058.058,0,0,1,0,.019A.063.063,0,0,1,70.03,144.853Zm3.731-4.41-.789,4.359a.066.066,0,0,1-.063.051h-1.1a.064.064,0,0,1-.063-.051l-.789-4.357a.064.064,0,0,1,.013-.055.07.07,0,0,1,.051-.025H73.7a.06.06,0,0,1,.051.025A.064.064,0,0,1,73.76,140.443Zm3.737,0L76.26,144.8a.068.068,0,0,1-.063.049H74.684a.063.063,0,0,1-.051-.025.064.064,0,0,1-.013-.055l.973-4.357a.066.066,0,0,1,.063-.051h1.777a.071.071,0,0,1,.053.025A.076.076,0,0,1,77.5,140.448Z"
                                                                    transform="translate(-62.393 -135.3)"
                                                                    fill="currentColor" />
                                                            </svg>
                                                        </span>
                                                    </a>
                                                </div> --}}
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
        <!-- End categories product section -->

        <!-- Start product section -->
        <section class="product__section section--padding pt-0">
            <div class="container">
                <div class="section__heading text-center mb-25">

                    <h2 class="section__heading--maintitle" style="font-family: var(--font-poppins); font-weight: 600;">TẤT CẢ SẢN PHẨM</h2>
                </div>
                <ul class="product__tab--one product__tab--btn d-flex justify-content-center mb-35">
                    <li class="product__tab--btn__list active" data-toggle="tab" data-target="#product_all">Tất cả</li>
                    @foreach ($categories as $category)
                        <li class="product__tab--btn__list" data-toggle="tab" data-target="#{{ $category->slug }}">
                            {{ $category->name }}</li>
                    @endforeach

                </ul>
                <div class="tab_content">
                    <div id="product_all" class="tab_pane active show">
                        <div class="product__section--inner">
                            <div class="row row-cols-lg-4 row-cols-md-3 row-cols-2 mb--n28">
                                @foreach ($products as $product)
                                    <div class="col md-28" style="margin-bottom: 35px">
                                        <div class="product__items product__bg">
                                            <div class="product__items--thumbnail" style="height: 410px">
                                                <a class="product__items--link"
                                                    href="{{ route('products.show', $product->slug) }}"><img
                                                        class="product__items--img"
                                                        src="{{ Voyager::image($product->thumbnail('box', 'image')) }}"
                                                        alt="{{ $product->name }}">
                                                    <div
                                                        class="product__categories--content d-flex justify-content-between align-items-center">
                                                        <div class="product__categories--content__left">
                                                            <h3 class="product__categories--content__maintitle" style="height: 60px; ">
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
                                                                    <input type="hidden" name="id" value="{{ $product->id }}">
                                                                    <input type="hidden" name="qty" value="1">
                                                                    <input type="hidden" name="name" value="{{ $product->name }}">
                                                                    @if ($product->promotional_price != '')
                                                                        <input type="hidden" name="price" value="{{ $product->promotional_price }}">
                                                                    @else
                                                                        <input type="hidden" name="price" value="{{ $product->price }}">
                                                                    @endif
                                                                    <button class="btn deals__banner--content__btn" style="line-height: 3.4rem; height: 3.4rem;  padding: 0 0.8rem;" type="submit">Mua ngay</button>
                                                                </form> --}}
                                                                <a href="{{ route('products.show', $product->slug) }}" class="btn deals__banner--content__btn" style="line-height: 3.4rem; height: 3.4rem;  padding: 0 0.8rem;" type="submit">Mua ngay</a>
                                                            </div>
                                                            <div
                                                                class="product__items--sold__stocks d-flex justify-content-between">
                                                                <span class="product__items--sold__stocks--text">đã
                                                                    bán: {{ $product->quantity_purchased }}</span>
                                                                <span class="product__items--sold__stocks--text">số
                                                                    lượng : {{ $product->quantity }}</span>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                    @foreach ($categories as $category)
                        <div id="{{ $category->slug }}" class="tab_pane">
                            <div class="product__section--inner">
                                <div class="row row-cols-lg-4 row-cols-md-3 row-cols-2 mb--n28">
                                    <?php
                                    $productCategory = \App\Product::where('category_id', $category->id)
                                        ->latest()
                                        ->get();
                                    ?>
                                    @foreach ($productCategory as $product)
                                        <div class="col md-28" style="margin-bottom: 35px">
                                            <div class="product__items product__bg">
                                                <div class="product__items--thumbnail" style="height: 410px">
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
                                                                        <span
                                                                            class="product__categories--content__subtitle">
                                                                            {{ number_format($product->promotional_price, 0) }}đ
                                                                        </span>
                                                                        <span
                                                                            class="product__categories--content__subtitle"
                                                                            style="text-decoration: line-through; color:black">
                                                                            {{ number_format($product->price, 0) }}đ
                                                                        </span>
                                                                    @else
                                                                        <span
                                                                            class="product__categories--content__subtitle">
                                                                            Giá:
                                                                            {{ number_format($product->price, 0) }}
                                                                        </span>
                                                                    @endif
                                                                    {{-- <form action="{{ route('buynow') }}" method="POST">
                                                                        @csrf()
                                                                        <input type="hidden" name="id" value="{{ $product->id }}">
                                                                        <input type="hidden" name="qty" value="1">
                                                                        <input type="hidden" name="name" value="{{ $product->name }}">
                                                                        @if ($product->promotional_price != '')
                                                                            <input type="hidden" name="price" value="{{ $product->promotional_price }}">
                                                                        @else
                                                                            <input type="hidden" name="price" value="{{ $product->price }}">
                                                                        @endif
                                                                        <button class="btn deals__banner--content__btn" style="line-height: 3.4rem; height: 3.4rem;  padding: 0 0.8rem;" type="submit">Mua ngay</button>
                                                                    </form> --}}
                                                                    <a href="{{ route('products.show', $product->slug) }}" class="btn deals__banner--content__btn" style="line-height: 3.4rem; height: 3.4rem;  padding: 0 0.8rem;" type="submit">Mua ngay</a>
                                                                </div>
                                                                <div
                                                                    class="product__items--sold__stocks d-flex justify-content-between">
                                                                    <span class="product__items--sold__stocks--text">đã
                                                                        bán: {{ $product->quantity_purchased }}</span>
                                                                    <span class="product__items--sold__stocks--text">số
                                                                        lượng : {{ $product->quantity }}</span>
                                                                </div>
                                                            </div>
                                                            {{-- <div class="product__categories--icon">
                                                                <a class="offcanvas__stikcy--toolbar__btn minicart__open--btn"
                                                                    href="{{ route('products.show', $product->slug) }}"
                                                                    data-offcanvas>
                                                                    <span class="offcanvas__stikcy--toolbar__icon">
                                                                        <svg xmlns="http://www.w3.org/2000/svg"
                                                                            width="18.51" height="15.443"
                                                                            viewBox="0 0 18.51 15.443">
                                                                            <path
                                                                                d="M79.963,138.379l-13.358,0-.56-1.927a.871.871,0,0,0-.6-.592l-1.961-.529a.91.91,0,0,0-.226-.03.864.864,0,0,0-.226,1.7l1.491.4,3.026,10.919a1.277,1.277,0,1,0,1.844,1.144.358.358,0,0,0,0-.049h6.163c0,.017,0,.034,0,.049a1.277,1.277,0,1,0,1.434-1.267c-1.531-.247-7.783-.55-7.783-.55l-.205-.8h7.8a.9.9,0,0,0,.863-.651l1.688-5.943h.62a.936.936,0,1,0,0-1.872Zm-9.934,6.474H68.568c-.04,0-.1.008-.125-.085-.034-.118-.082-.283-.082-.283l-1.146-4.037a.061.061,0,0,1,.011-.057.064.064,0,0,1,.053-.025h1.777a.064.064,0,0,1,.063.051l.969,4.34,0,.013a.058.058,0,0,1,0,.019A.063.063,0,0,1,70.03,144.853Zm3.731-4.41-.789,4.359a.066.066,0,0,1-.063.051h-1.1a.064.064,0,0,1-.063-.051l-.789-4.357a.064.064,0,0,1,.013-.055.07.07,0,0,1,.051-.025H73.7a.06.06,0,0,1,.051.025A.064.064,0,0,1,73.76,140.443Zm3.737,0L76.26,144.8a.068.068,0,0,1-.063.049H74.684a.063.063,0,0,1-.051-.025.064.064,0,0,1-.013-.055l.973-4.357a.066.066,0,0,1,.063-.051h1.777a.071.071,0,0,1,.053.025A.076.076,0,0,1,77.5,140.448Z"
                                                                                transform="translate(-62.393 -135.3)"
                                                                                fill="currentColor" />
                                                                        </svg>
                                                                    </span>
                                                                </a>
                                                            </div> --}}
                                                        </div>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    @endforeach

                                </div>
                            </div>
                        </div>
                    @endforeach

                </div>
            </div>
        </section>
        <!-- End product section -->

        <!-- Start banner section -->
        <section class="banner__section section--padding pt-0">
            <div class="container">
                <div class="row row-cols-lg-2 row-cols-md-2 row-cols-sm-2 row-cols-1 mb--n30">
                    @foreach ($homeMiddle as $key => $banner)
                        @php
                            $bannerImage = stripslashes($banner->image);
                            $bannerImage = trim($bannerImage, '[""]');
                            // dd($bannerImage)
                        @endphp
                        <div class="col mb-30">
                            <div class="banner__items position__relative">
                                <a class="banner__items--thumbnail display-block" href="{{ route('products') }}"><img
                                        class="banner__items--thumbnail__img display-block"
                                        src="{{ Voyager::image($bannerImage) }}" alt="banner-img">

                                </a>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </section>
        <!-- End banner section -->

        <!-- Start blog section -->
        <section class="blog__section">
            <div class="container blog__section--container">
                <div class="section__heading text-center mb-40">

                    <h2 class="section__heading--maintitle" style="font-family: var(--font-poppins); font-weight: 600;">KIẾN THỨC - KINH NGHIỆM</h2>
                </div>
                <div class="blog__section--inner blog__swiper--activation swiper">
                    <div class="swiper-wrapper">
                        @foreach ($posts as $post)
                            <div class="swiper-slide">
                                <div class="blog__items">
                                    <div class="blog__items--thumbnail">
                                        <a class="blog__items--link" href="{{ route('news.show', $post->slug) }}"><img
                                                class="blog__items--img"
                                                src="{{ Voyager::image($post->thumbnail('cropped', 'image')) }}"
                                                alt="{{ $post->translate()->title }}"></a>
                                    </div>
                                    <div class="blog__items--content">

                                        <h3 class="blog__items--title"><a
                                                href="{{ route('news.show', $post->slug) }}">{{ $post->translate()->title }}</a>
                                        </h3>
                                        <p class="blog__items--desc"
                                            style="
                                                display: -webkit-box;
                                                -webkit-line-clamp: 2;
                                                -webkit-box-orient: vertical;  
                                                overflow: hidden;
                                            ">
                                            {{ $post->translate()->excerpt }}</p>
                                        <a class="blog__items--readmore" href="{{ route('news.show', $post->slug) }}">Đọc
                                            thêm <svg class="blog__items--readmore__icon"
                                                xmlns="http://www.w3.org/2000/svg" width="6.2" height="6.2"
                                                viewBox="0 0 6.2 6.2">
                                                <path
                                                    d="M7.1,4l-.546.546L8.716,6.713H4v.775H8.716L6.554,9.654,7.1,10.2,9.233,8.067,10.2,7.1Z"
                                                    transform="translate(-4 -4)" fill="currentColor" />
                                            </svg>
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
        <!-- End blog section -->
    </main>
@endsection
