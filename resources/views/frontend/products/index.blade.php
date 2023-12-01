@extends('frontend.layouts.default')

@section('content')
    <div class="offcanvas__filter--sidebar widget__area">
        <button type="button" class="offcanvas__filter--close" data-offcanvas="">
            <svg class="minicart__close--icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                <path fill="currentColor" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                    stroke-width="32" d="M368 368L144 144M368 144L144 368"></path>
            </svg> <span class="offcanvas__filter--close__text">Đóng</span>
        </button>
        <div class="offcanvas__filter--sidebar__inner">
            <div class="single__widget widget__bg">
                <h2 class="widget__title h3">Danh mục sản phẩm</h2>
                <ul class="widget__categories--menu">
                    @foreach ($categories as $category)
                        <li class="widget__categories--menu__list active" style="padding: 5px">
                            <a class="widget__categories--sub__menu--link d-flex align-items-center"
                                href="{{ route('products', ['category' => $category->slug]) }}"><span
                                    class="widget__categories--sub__menu--text">{{ $category->name }}</span>
                            </a>
                        </li>
                    @endforeach
                    
                </ul>
            </div>
           
           
            
            <div class="single__widget widget__bg">
                <h2 class="widget__title h3">Tag</h2>
                <ul class="widget__tagcloud">
                    @foreach ($tags as $tag)
                        <li class="widget__tagcloud--list"><a class="widget__tagcloud--link"
                                href="{{ route('products', ['tag' => $tag->slug]) }}">{{ $tag->name }}</a>
                        </li>
                    @endforeach
                    
                </ul>
            </div>
        </div>
    </div>
    {{-- @dd($categories); --}}
    <main class="main__content_wrapper">

        <!-- Start breadcrumb section -->
        <section class="breadcrumb__section breadcrumb__bg"
            style="background-image: url('{{ \TCG\Voyager\Facades\Voyager::image(setting('site.breadcrumb')) }}')">
            <div class="container">
                <div class="row row-cols-1">
                    <div class="col">
                        <div class="breadcrumb__content text-center">
                            <h1 class="breadcrumb__content--title text-white mb-25">Sản phẩm của chúng tôi</h1>
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

        <!-- Start shop section -->
        <section class="shop__section section--padding">
            <div class="container-fluid">

                <div class="shop__header bg__gray--color d-flex align-items-center justify-content-between mb-30">
                    <button class="widget__filter--btn d-flex d-lg-none align-items-center" data-offcanvas="">
                        <svg class="widget__filter--btn__icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                            <path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                                stroke-width="28" d="M368 128h80M64 128h240M368 384h80M64 384h240M208 256h240M64 256h80">
                            </path>
                            <circle cx="336" cy="128" r="28" fill="none" stroke="currentColor"
                                stroke-linecap="round" stroke-linejoin="round" stroke-width="28"></circle>
                            <circle cx="176" cy="256" r="28" fill="none" stroke="currentColor"
                                stroke-linecap="round" stroke-linejoin="round" stroke-width="28"></circle>
                            <circle cx="336" cy="384" r="28" fill="none" stroke="currentColor"
                                stroke-linecap="round" stroke-linejoin="round" stroke-width="28"></circle>
                        </svg>
                        <span class="widget__filter--btn__text">Lọc sản phẩm</span>
                    </button>
                    <div class="product__view--mode d-flex align-items-center">

                        <div class="product__view--mode__list product__short--by align-items-center d-none d-lg-flex">
                            <label class="product__view--label">Sắp xếp :</label>
                            <div class="select shop__header--select">
                                <select class="product__view--select" id="sortOptions" onchange="handleSelectChange()">
                                    <a id="shopLink" href="{{ route('products', ['sort' => 'low_high']) }}">
                                        <option selected="" value="1">Giá tăng dần</option>
                                    </a>
                                    <a
                                        href="{{ route('shop.index', ['category' => request()->category, 'tag' => request()->tag, 'sort' => 'low_high']) }}">
                                        <option selected="" value="1">Giá thấp dần</option>
                                    </a>
                                </select>
                                <a id="shopLink"></a>

                                <script>
                                    function handleSelectChange() {
                                        var selectElement = document.getElementById('sortOptions');
                                        var selectedValue = selectElement.options[selectElement.selectedIndex].value;

                                        // Xử lý logic click vào liên kết dựa trên giá trị được chọn
                                        var shopLink = document.getElementById('shopLink');
                                        if (selectedValue === '1') {
                                            // Điều hướng đến trang với sắp xếp giá tăng dần
                                            shopLink.href = "{{ route('products', ['sort' => 'low_high']) }}";
                                        } else {
                                            // Xử lý logic cho các giá trị khác nếu cần
                                        }

                                        // Mô phỏng việc click vào liên kết
                                        shopLink.click();
                                    }
                                </script>
                            </div>

                        </div>

                        <div class="product__view--mode__list product__view--search d-xl-block d-none ">
                            <form class="product__view--search__form" action="{{ route('search') }}" method="get">
                                <label>
                                    <input class="product__view--search__input border-0" placeholder="từ khóa"
                                        name="key" type="text">
                                </label>
                                <button class="product__view--search__btn" aria-label="search btn" type="submit">
                                    <svg class="product__items--action__btn--svg" xmlns="http://www.w3.org/2000/svg"
                                        width="22.51" height="20.443" viewBox="0 0 512 512">
                                        <path d="M221.09 64a157.09 157.09 0 10157.09 157.09A157.1 157.1 0 00221.09 64z"
                                            fill="none" stroke="currentColor" stroke-miterlimit="10"
                                            stroke-width="32"></path>
                                        <path fill="none" stroke="currentColor" stroke-linecap="round"
                                            stroke-miterlimit="10" stroke-width="32" d="M338.29 338.29L448 448"></path>
                                    </svg>
                                </button>
                            </form>
                            
                        </div>
                    </div>

                </div>
                <div class="row">
                    <div class="col-xl-3 col-lg-4">
                        <div class="shop__sidebar--widget widget__area d-none d-lg-block">
                            <div class="single__widget widget__bg">
                                <h2 class="widget__title h3">Danh mục</h2>
                                <ul class="widget__categories--menu">
                                    @foreach ($categories as $category)
                                        <li class="widget__categories--menu__list active" style="padding: 5px">
                                            <a class="widget__categories--sub__menu--link d-flex align-items-center"
                                                href="{{ route('products', ['category' => $category->slug]) }}"><span
                                                    class="widget__categories--sub__menu--text">{{ $category->name }}</span>
                                            </a>
                                        </li>
                                    @endforeach
                                </ul>
                            </div>

                            <div class="single__widget widget__bg">
                                <h2 class="widget__title h3">Tag</h2>
                                <ul class="widget__tagcloud">
                                    @foreach ($tags as $tag)
                                        <li class="widget__tagcloud--list"><a class="widget__tagcloud--link"
                                                href="{{ route('products', ['tag' => $tag->slug]) }}">{{ $tag->name }}</a>
                                        </li>
                                    @endforeach
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-9 col-lg-8">
                        <div class="shop__product--wrapper">
                            <div class="tab_content">
                                <div id="product_grid" class="tab_pane active show">
                                    <div class="product__section--inner product__section--style3__inner">
                                        <div
                                            class="row row-cols-xxl-4 row-cols-xl-4 row-cols-lg-3 row-cols-md-3 row-cols-sm-3 row-cols-2 mb--n30">
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
                                                                        <h3 style="height: 60px;"
                                                                            class="product__categories--content__maintitle">
                                                                            {{ $product->name }}</h3>
                                                                        <div class="product__items--sold__stocks d-flex justify-content-between">
                                                                            @if ($product->promotional_price != '')
                                                                            <span class="product__categories--content__subtitle">
                                                                                {{ number_format($product->promotional_price, 0) }}đ
                                                                           </span>
                                                                            <span class="product__categories--content__subtitle" style="text-decoration: line-through; color:black">
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
                                                                            <span
                                                                                class="product__items--sold__stocks--text">đã
                                                                                bán:
                                                                                {{ $product->quantity_purchased }}</span>
                                                                            <span
                                                                                class="product__items--sold__stocks--text">số
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
                            </div>
                            {{-- @dd($pagination); --}}
                            <div class="pagination__area">
                                <nav class="pagination justify-content-center">
                                    {{ $products->links('frontend.layouts.partials.paginate') }}
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End shop section -->
    </main>
@endsection

@section('js')
@endsection
