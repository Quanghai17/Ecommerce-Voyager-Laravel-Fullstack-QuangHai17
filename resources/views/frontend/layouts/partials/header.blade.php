@php
    $menu = menu('main', '_json');
    $categories = \App\Category::get();
    $homeBanners = \App\Banner::where('status', 'ACTIVE')
        ->where('type', 'bannerHome')
        ->get();
    $homeMiddle = \App\Banner::where('status', 'ACTIVE')
        ->where('type', 'bannerMiddle')
        ->get();
    $about = \TCG\Voyager\Models\Page::where('status', 'ACTIVE')->first();
    $categories = \App\Category::get();
    $hotProducts = \App\Product::inRandomOrder()
        ->where('featured', 1)
        ->take(6)
        ->get();
    // dd($hotProducts);
    $products = \App\Product::inRandomOrder()
        ->where('featured', 1)
        ->take(8)
        ->get();
    $posts = \TCG\Voyager\Models\Post::where('status', 'PUBLISHED')
        ->limit(9)
        ->get();
    $projects = \App\Project::where('status', 'PUBLISHED')->paginate(9);
    // dd($homeBanners);
    // dd($menu);
@endphp

<!-- Start header area -->
<header class="header__section header__transparent">
    <div class="main__header header__sticky" style="background-color: #034F10;">
        <div class="container" style="display: flex;justify-content: space-between;">
            <div class="main__logo">
                <a class="main__logo--link" href="{{ route('home') }}"><img class="main__logo--img"
                        src="{{ \TCG\Voyager\Facades\Voyager::image(setting('site.logo')) }}" alt="logo-img"></a>
            </div>
            <div class="main__header--inner position__relative d-flex justify-content-between align-items-center"
                style="color: rgb(250, 250, 250)">
                <div class="offcanvas__header--menu__open ">
                    <a class="offcanvas__header--menu__open--btn" href="javascript:void(0)" data-offcanvas>
                        <svg xmlns="http://www.w3.org/2000/svg" class="ionicon offcanvas__header--menu__open--svg"
                            viewBox="0 0 512 512">
                            <path fill="currentColor" stroke="currentColor" stroke-linecap="round"
                                stroke-miterlimit="10" stroke-width="32" d="M80 160h352M80 256h352M80 352h352" />
                        </svg>
                        <span class="visually-hidden">Offcanvas Menu Open</span>
                    </a>
                </div>

                
                <div class="header__search--widget d-none d-lg-block header__sticky--none" style="margin-right: 30px;">
                    <form class="widget__search--form" action="{{ route('search') }}" method="get">
                        <label style="display: flex;justify-content: right;">
                            <input id="expandingInput" class="widget__search--form__input" placeholder="Tìm kiếm sản phẩm..."
                                name="key" type="text">
                            <button class="widget__search--form__btn" aria-label="search button">
                                <svg class="product__items--action__btn--svg" xmlns="http://www.w3.org/2000/svg"
                                    width="22.51" height="20.443" viewBox="0 0 512 512">
                                    <path d="M221.09 64a157.09 157.09 0 10157.09 157.09A157.1 157.1 0 00221.09 64z"
                                        fill="none" stroke="currentColor" stroke-miterlimit="10" stroke-width="32">
                                    </path>
                                    <path fill="none" stroke="currentColor" stroke-linecap="round"
                                        stroke-miterlimit="10" stroke-width="32" d="M338.29 338.29L448 448">
                                    </path>
                                </svg>
                            </button>
                        </label>

                    </form>
                </div>
                <div class="header__menu d-none d-lg-block header__sticky--block">
                    <nav class="header__menu--navigation">
                        <ul class="d-flex">
                            @foreach ($menu as $item)
                                @if (count($item->children) > 0)
                                    <li class="header__menu--items">
                                        <a href="{{ asset($item->url) }}" class="header__menu--link"
                                            target="{{ $item->target }}">
                                            {{ $item->translate()->title }}
                                            <svg class="menu__arrowdown--icon" xmlns="http://www.w3.org/2000/svg"
                                                width="12" height="7.41" viewBox="0 0 12 7.41">
                                                <path d="M16.59,8.59,12,13.17,7.41,8.59,6,10l6,6,6-6Z"
                                                    transform="translate(-6 -8.59)" fill="currentColor"
                                                    opacity="0.7" />
                                            </svg>
                                        </a>
                                        <ul class="header__sub--menu">
                                            @foreach ($item->children as $child)
                                                <li class="header__sub--menu__items"><a href="{{ asset($child->url) }}"
                                                        class="header__sub--menu__link">{{ $child->translate()->title }}</a>
                                                </li>
                                            @endforeach
                                        </ul>
                                    </li>
                                @else
                                    <li class="header__menu--items">
                                        <a class="header__menu--link" href="{{ asset($item->url) }}"
                                            target="{{ $item->target }}">{{ $item->translate()->title }}</a>
                                    </li>
                                @endif
                            @endforeach
                        </ul>
                    </nav>
                </div>

                <div class="header__right--info d-none d-lg-block d-flex align-items-center " style="margin-right: 30px;">
                    <div class="suport__contact d-flex align-items-center">
                        <svg xmlns="http://www.w3.org/2000/svg" width="45" height="46" viewBox="0 0 28 29"
                            fill="none">
                            <path
                                d="M19.8295 18.118C19.0977 17.3955 18.1841 17.3955 17.457 18.118C16.9023 18.6681 16.3476 19.2181 15.8022 19.7774C15.6531 19.9313 15.5272 19.9639 15.3454 19.8613C14.9865 19.6656 14.6043 19.5071 14.2594 19.2927C12.6512 18.2812 11.3041 16.9807 10.1109 15.5171C9.51889 14.7899 8.99217 14.0115 8.62393 13.1352C8.54935 12.9581 8.56333 12.8415 8.70783 12.697C9.26252 12.161 9.80322 11.611 10.3486 11.0609C11.1084 10.2965 11.1084 9.40154 10.3439 8.63243C9.91043 8.19428 9.47693 7.76544 9.04344 7.32729C8.59596 6.87981 8.15314 6.42767 7.70101 5.98486C6.96919 5.27169 6.05559 5.27169 5.32844 5.98952C4.76909 6.53954 4.23305 7.10355 3.66438 7.64425C3.13766 8.143 2.87197 8.75363 2.81604 9.46679C2.72747 10.6274 3.01181 11.7228 3.41268 12.7902C4.23305 14.9997 5.48226 16.962 6.99716 18.7613C9.04344 21.1944 11.4859 23.1195 14.3433 24.5086C15.6298 25.1332 16.9629 25.6133 18.4125 25.6925C19.41 25.7485 20.277 25.4968 20.9715 24.7183C21.447 24.187 21.983 23.7022 22.4864 23.1941C23.2322 22.439 23.2369 21.5254 22.4957 20.7796C21.6101 19.8893 20.7198 19.0037 19.8295 18.118ZM18.9392 14.403L20.6592 14.1094C20.3889 12.5292 19.6431 11.0982 18.5104 9.96088C17.3125 8.76295 15.7976 8.00783 14.1288 7.77477L13.8865 9.50408C15.1776 9.68587 16.3522 10.2685 17.2798 11.1961C18.1561 12.0724 18.7295 13.1818 18.9392 14.403ZM21.6288 6.92642C19.6431 4.94074 17.1307 3.68687 14.3572 3.29999L14.1149 5.0293C16.5107 5.36491 18.6829 6.45098 20.3982 8.16165C22.025 9.78842 23.0924 11.844 23.4793 14.1047L25.1993 13.8111C24.7471 11.1914 23.5119 8.81422 21.6288 6.92642Z"
                                fill="white"></path>
                        </svg>
                        <p class="suport__contact--text text-white"
                            style="color: #ffffff !important;margin-left: 5px;text-align: center;">
                            <span class="suport__text--24">Mua hàng online</span>
                            <a class="suport__contact--number" style="font-size: 17px; font-weight: 900;"
                                href="tel:{{ setting('site.phone') }}">{{ preg_replace("/^(\d{3})(\d{3})(\d{4})$/", "$1.$2.$3", setting('site.phone')) }}</a>
                        </p>
                    </div>
                </div>
                <div class="header__account header__sticky--none">
                    <ul class="d-flex">
                        <li class="header__account--items  header__account--search__items mobile__d--block d-sm-2-none">
                            <a class="header__account--btn search__open--btn" href="javascript:void(0)" data-offcanvas>
                                <svg class="product__items--action__btn--svg" xmlns="http://www.w3.org/2000/svg"
                                    width="22.51" height="20.443" viewBox="0 0 512 512">
                                    <path d="M221.09 64a157.09 157.09 0 10157.09 157.09A157.1 157.1 0 00221.09 64z"
                                        fill="none" stroke="currentColor" stroke-miterlimit="10"
                                        stroke-width="32" />
                                    <path fill="none" stroke="currentColor" stroke-linecap="round"
                                        stroke-miterlimit="10" stroke-width="32" d="M338.29 338.29L448 448" />
                                </svg>
                                <span class="visually-hidden">Tìm kiếm</span>
                            </a>
                        </li>
                        <li class="header__account--items">
                            <a class="header__account--btn minicart__open--btn" href="javascript:void(0)"
                                data-offcanvas="">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16.706" height="15.534"
                                    viewBox="0 0 14.706 13.534">
                                    <g transform="translate(0 0)">
                                        <g>
                                            <path data-name="Path 16787"
                                                d="M4.738,472.271h7.814a.434.434,0,0,0,.414-.328l1.723-6.316a.466.466,0,0,0-.071-.4.424.424,0,0,0-.344-.179H3.745L3.437,463.6a.435.435,0,0,0-.421-.353H.431a.451.451,0,0,0,0,.9h2.24c.054.257,1.474,6.946,1.555,7.33a1.36,1.36,0,0,0-.779,1.242,1.326,1.326,0,0,0,1.293,1.354h7.812a.452.452,0,0,0,0-.9H4.74a.451.451,0,0,1,0-.9Zm8.966-6.317-1.477,5.414H5.085l-1.149-5.414Z"
                                                transform="translate(0 -463.248)" fill="#fefefe"></path>
                                            <path data-name="Path 16788"
                                                d="M5.5,478.8a1.294,1.294,0,1,0,1.293-1.353A1.325,1.325,0,0,0,5.5,478.8Zm1.293-.451a.452.452,0,1,1-.431.451A.442.442,0,0,1,6.793,478.352Z"
                                                transform="translate(-1.191 -466.622)" fill="#fefefe"></path>
                                            <path data-name="Path 16789"
                                                d="M13.273,478.8a1.294,1.294,0,1,0,1.293-1.353A1.325,1.325,0,0,0,13.273,478.8Zm1.293-.451a.452.452,0,1,1-.431.451A.442.442,0,0,1,14.566,478.352Z"
                                                transform="translate(-2.875 -466.622)" fill="#fefefe"></path>
                                        </g>
                                    </g>
                                </svg>
                                <span class="items__count">{{ Cart::instance('default')->count() }} </span>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="header__account header__sticky--block">
                    <ul class="d-flex">
                        <li class="header__account--items  header__account--search__items d-sm-2-none">
                            <a class="header__account--btn search__open--btn" href="javascript:void(0)"
                                data-offcanvas>
                                <svg class="product__items--action__btn--svg" xmlns="http://www.w3.org/2000/svg"
                                    width="22.51" height="20.443" viewBox="0 0 512 512">
                                    <path d="M221.09 64a157.09 157.09 0 10157.09 157.09A157.1 157.1 0 00221.09 64z"
                                        fill="none" stroke="currentColor" stroke-miterlimit="10"
                                        stroke-width="32" />
                                    <path fill="none" stroke="currentColor" stroke-linecap="round"
                                        stroke-miterlimit="10" stroke-width="32" d="M338.29 338.29L448 448" />
                                </svg>
                                <span class="visually-hidden">Tìm kiếm</span>
                            </a>
                        </li>
                        <li class="header__account--items">

                            <a class="header__account--btn minicart__open--btn" href="javascript:void(0)"
                                data-offcanvas>
                                <svg xmlns="http://www.w3.org/2000/svg" width="16.706" height="15.534"
                                    viewBox="0 0 14.706 13.534">
                                    <g transform="translate(0 0)">
                                        <g>
                                            <path data-name="Path 16787"
                                                d="M4.738,472.271h7.814a.434.434,0,0,0,.414-.328l1.723-6.316a.466.466,0,0,0-.071-.4.424.424,0,0,0-.344-.179H3.745L3.437,463.6a.435.435,0,0,0-.421-.353H.431a.451.451,0,0,0,0,.9h2.24c.054.257,1.474,6.946,1.555,7.33a1.36,1.36,0,0,0-.779,1.242,1.326,1.326,0,0,0,1.293,1.354h7.812a.452.452,0,0,0,0-.9H4.74a.451.451,0,0,1,0-.9Zm8.966-6.317-1.477,5.414H5.085l-1.149-5.414Z"
                                                transform="translate(0 -463.248)" fill="#fefefe" />
                                            <path data-name="Path 16788"
                                                d="M5.5,478.8a1.294,1.294,0,1,0,1.293-1.353A1.325,1.325,0,0,0,5.5,478.8Zm1.293-.451a.452.452,0,1,1-.431.451A.442.442,0,0,1,6.793,478.352Z"
                                                transform="translate(-1.191 -466.622)" fill="#fefefe" />
                                            <path data-name="Path 16789"
                                                d="M13.273,478.8a1.294,1.294,0,1,0,1.293-1.353A1.325,1.325,0,0,0,13.273,478.8Zm1.293-.451a.452.452,0,1,1-.431.451A.442.442,0,0,1,14.566,478.352Z"
                                                transform="translate(-2.875 -466.622)" fill="#fefefe" />
                                        </g>
                                    </g>
                                </svg>
                                <span class="items__count">{{ Cart::instance('default')->count() }}</span>
                            </a>

                        </li>
                    </ul>
                </div>

            </div>
        </div>
    </div>
    <div class="header__bottom bg__secondary">
        <div class="container">
            <div class="header__bottom--inner position__relative d-flex align-items-center">
                <div class="categories__menu">
                    <div class="categories__menu--header text-white d-flex align-items-center">
                        <svg class="categories__list--icon" xmlns="http://www.w3.org/2000/svg" width="21.007"
                            style="color: rgb(68, 65, 65);" height="16.831" viewBox="0 0 21.007 16.831">
                            <path id="listine-dots"
                                d="M20.66,99.786a1.036,1.036,0,0,0-.347-.13H4.227a2.013,2.013,0,0,1,0,3.012q7.988,0,15.976,0h.063a.7.7,0,0,0,.454-.162.9.9,0,0,0,.286-.452v-1.765A.861.861,0,0,0,20.66,99.786ZM3.323,101.162A1.662,1.662,0,1,1,1.662,99.5,1.661,1.661,0,0,1,3.323,101.162Zm16.99,3H4.227a2.013,2.013,0,0,1,0,3.012q7.988,0,15.976,0h.063a.7.7,0,0,0,.454-.164.9.9,0,0,0,.286-.452v-1.765a.861.861,0,0,0-.347-.5A1.082,1.082,0,0,0,20.314,104.161Zm-16.99,1.506a1.662,1.662,0,1,1-1.662-1.662A1.663,1.663,0,0,1,3.323,105.668Zm16.99,3H4.227a2.013,2.013,0,0,1,0,3.012q7.988,0,15.976,0h.063a.7.7,0,0,0,.454-.164.9.9,0,0,0,.286-.45v-1.767a.861.861,0,0,0-.347-.5A1.083,1.083,0,0,0,20.314,108.663Zm-16.99,1.506a1.662,1.662,0,1,1-1.662-1.662A1.663,1.663,0,0,1,3.323,110.169Zm16.99,2.993H4.227a2.013,2.013,0,0,1,0,3.012q7.988,0,15.976,0h.063a.687.687,0,0,0,.454-.162.9.9,0,0,0,.286-.452v-1.765a.861.861,0,0,0-.347-.5A1.035,1.035,0,0,0,20.314,113.163Zm-16.99,1.506a1.662,1.662,0,1,1-1.662-1.662A1.661,1.661,0,0,1,3.323,114.669Z"
                                transform="translate(0 -99.5)" fill="currentColor" />
                        </svg>
                        <span class="categories__menu--title" style="color: black;">Tất cả danh mục</span>
                        <svg class="categories__arrowdown--icon" xmlns="http://www.w3.org/2000/svg" width="12.355"
                            height="8.394" viewBox="0 0 10.355 6.394">
                            <path d="M15.138,8.59l-3.961,3.952L7.217,8.59,6,9.807l5.178,5.178,5.178-5.178Z"
                                transform="translate(-6 -8.59)" fill="currentColor" />
                        </svg>
                    </div>
                    <div class="dropdown__categories--menu">
                        <ul class="d-none d-lg-block">
                            @foreach ($categories as $category)
                                <li class="categories__menu--items">
                                    <a class="categories__menu--link"
                                        href="{{ route('categories.category', $category->slug) }}">
                                        {{ $category->name }}
                                    </a>
                                </li>
                            @endforeach
                        </ul>
                        <nav class="category__mobile--menu">
                            <ul class="category__mobile--menu_ul">
                                @foreach ($categories as $category)
                                    <li class="categories__menu--items">
                                        <a class="categories__menu--link"
                                            href="{{ route('categories.category', $category->slug) }}">
                                            {{ $category->name }}
                                        </a>
                                    </li>
                                @endforeach
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="header__right--area d-flex justify-content-between align-items-center"
                    style="background-color: white;">
                    <div class="header__menu">
                        <nav class="header__menu--navigation" style="color: rgb(0, 0, 0);">
                            {{-- <ul class="d-flex">
                                @foreach ($menu as $item)
                                    @if (count($item->children) > 0)
                                        <li class="header__menu--items">
                                            <a href="{{ asset($item->url) }}" class="header__menu--link"
                                                target="{{ $item->target }}">
                                                {{ $item->translate()->title }}
                                                <svg class="menu__arrowdown--icon" xmlns="http://www.w3.org/2000/svg"
                                                    width="12" height="7.41" viewBox="0 0 12 7.41">
                                                    <path d="M16.59,8.59,12,13.17,7.41,8.59,6,10l6,6,6-6Z"
                                                        transform="translate(-6 -8.59)" fill="currentColor"
                                                        opacity="0.7" />
                                                </svg>
                                            </a>
                                            <ul class="header__sub--menu">
                                                @foreach ($item->children as $child)
                                                    <li class="header__sub--menu__items"><a style="color: black"
                                                            href="{{ asset($child->url) }}"
                                                            class="header__sub--menu__link">{{ $child->translate()->title }}</a>
                                                    </li>
                                                @endforeach
                                            </ul>
                                        </li>
                                    @else
                                        <li class="header__menu--items">
                                            <a class="header__menu--link" href="{{ asset($item->url) }}"
                                                target="{{ $item->target }}">{{ $item->translate()->title }}</a>
                                        </li>
                                    @endif
                                @endforeach
                            </ul> --}}
                            <ul class="d-flex">
                                <li class="header__menu--items">
                                    <a class="header__menu--link " href="{{ route('home') }}">TRANG CHỦ
                                    </a>
                                </li>
                                <li class="header__menu--items">
                                    <a class="header__menu--link " href="{{ route('about', $about->slug) }}">GIỚI
                                        THIỆU
                                    </a>
                                </li>
                                <li class="header__menu--items mega__menu--items">
                                    <a class="header__menu--link e" href="{{ route('products') }}">SẢN PHẨM
                                        <svg class="menu__arrowdown--icon" xmlns="http://www.w3.org/2000/svg"
                                            width="12" height="7.41" viewBox="0 0 12 7.41">
                                            <path d="M16.59,8.59,12,13.17,7.41,8.59,6,10l6,6,6-6Z"
                                                transform="translate(-6 -8.59)" fill="currentColor" opacity="0.7">
                                            </path>
                                        </svg>
                                    </a>
                                    <ul class="header__mega--menu d-flex">
                                        @foreach ($categories as $category)
                                            <li class="header__mega--menu__li">
                                                <span class="header__mega--subtitle">{{ $category->name }}</span>
                                                <ul class="header__mega--sub__menu">
                                                    <?php
                                                    $productCategory = \App\Product::where('category_id', $category->id)
                                                        ->latest()
                                                        ->get();
                                                    ?>
                                                    @foreach ($productCategory as $product)
                                                        <li class="header__mega--sub__menu_li"><a
                                                                class="header__mega--sub__menu--title"
                                                                href="{{ route('products.show', $product->slug) }}">{{ $product->name }}</a>
                                                        </li>
                                                    @endforeach
                                                </ul>
                                            </li>
                                        @endforeach
                                    </ul>
                                </li>
                                <li class="header__menu--items">
                                    <a class="header__menu--link " href="{{ route('news') }}">KIẾN THỨC
                                        <svg class="menu__arrowdown--icon" xmlns="http://www.w3.org/2000/svg"
                                            width="12" height="7.41" viewBox="0 0 12 7.41">
                                            <path d="M16.59,8.59,12,13.17,7.41,8.59,6,10l6,6,6-6Z"
                                                transform="translate(-6 -8.59)" fill="currentColor" opacity="0.7">
                                            </path>
                                        </svg>
                                    </a>
                                    <ul class="header__sub--menu">
                                        @foreach ($posts as $post)
                                            <li class="header__sub--menu__items"><a
                                                    href="{{ route('news.show', $post->slug) }}"
                                                    class="header__sub--menu__link">{{ $post->translate()->title }}</a>
                                            </li>
                                        @endforeach
                                    </ul>
                                </li>
                                <li class="header__menu--items">
                                    <a class="header__menu--link " href="{{ route('projects') }}">DỰ ÁN
                                        <svg class="menu__arrowdown--icon" xmlns="http://www.w3.org/2000/svg"
                                            width="12" height="7.41" viewBox="0 0 12 7.41">
                                            <path d="M16.59,8.59,12,13.17,7.41,8.59,6,10l6,6,6-6Z"
                                                transform="translate(-6 -8.59)" fill="currentColor" opacity="0.7">
                                            </path>
                                        </svg>
                                    </a>
                                    <ul class="header__sub--menu">
                                        @foreach ($projects as $project)
                                            <li class="header__sub--menu__items"><a
                                                    href="{{ route('projects.show', $project->slug) }}"
                                                    class="header__sub--menu__link">{{ $project->title }}</a></li>
                                        @endforeach
                                    </ul>
                                </li>
                                <li class="header__menu--items">
                                    <a class="header__menu--link " href="/bao-gia">BÁO GIÁ </a>
                                </li>
                                <li class="header__menu--items">
                                    <a class="header__menu--link " href="{{ route('contact') }}">LIÊN HỆ </a>
                                </li>

                                <li class="header__menu--items">
                                    <a class="header__menu--link " href="/tra-cuu">TRA CỨU </a>
                                </li>

                            </ul>
                        </nav>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <!-- Start Offcanvas header menu -->
    <div class="offcanvas__header">
        <div class="offcanvas__inner">
            <div class="offcanvas__logo">
                <a class="offcanvas__logo_link" href="{{ route('home') }}">
                    <img src="{{ \TCG\Voyager\Facades\Voyager::image(setting('site.logo')) }}"
                        alt="{{ $pageMeta['title'] ?? setting('site.title') }}" width="158" height="36">
                </a>
                <button class="offcanvas__close--btn" data-offcanvas>close</button>
            </div>
            <nav class="offcanvas__menu">
                <ul class="offcanvas__menu_ul">
                    @foreach ($menu as $item)
                        @if (count($item->children) > 0)
                            <li class="offcanvas__menu_li">
                                <a href="{{ asset($item->url) }}" class="offcanvas__menu_item"
                                    target="{{ $item->target }}">
                                    {{ $item->translate()->title }}
                                    <svg class="menu__arrowdown--icon" xmlns="http://www.w3.org/2000/svg"
                                        width="12" height="7.41" viewBox="0 0 12 7.41">
                                        <path d="M16.59,8.59,12,13.17,7.41,8.59,6,10l6,6,6-6Z"
                                            transform="translate(-6 -8.59)" fill="currentColor" opacity="0.7" />
                                    </svg>
                                </a>
                                <ul class="offcanvas__sub_menu">
                                    @foreach ($item->children as $child)
                                        <li class="offcanvas__sub_menu_li"><a href="{{ asset($child->url) }}"
                                                class="offcanvas__sub_menu_item">{{ $child->translate()->title }}</a>
                                        </li>
                                    @endforeach
                                </ul>
                            </li>
                        @else
                            <li class="offcanvas__menu_li">
                                <a class="offcanvas__menu_item" href="{{ asset($item->url) }}"
                                    target="{{ $item->target }}">{{ $item->translate()->title }}</a>
                            </li>
                        @endif
                    @endforeach
                    <li class="offcanvas__menu_li">
                        <a class="offcanvas__menu_item" href="/tra-cuu">TRA CỨU ĐƠN HÀNG</a>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
    <!-- End Offcanvas header menu -->

    <!-- Start Offcanvas stikcy toolbar -->
    <div class="offcanvas__stikcy--toolbar">
        <ul class="d-flex justify-content-between">
            <li class="offcanvas__stikcy--toolbar__list">
                <a class="offcanvas__stikcy--toolbar__btn" href="{{ route('home') }}">
                    <span class="offcanvas__stikcy--toolbar__icon">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" width="21.51" height="21.443"
                            viewBox="0 0 22 17">
                            <path fill="currentColor"
                                d="M20.9141 7.93359c.1406.11719.2109.26953.2109.45703 0 .14063-.0469.25782-.1406.35157l-.3516.42187c-.1172.14063-.2578.21094-.4219.21094-.1406 0-.2578-.04688-.3515-.14062l-.9844-.77344V15c0 .3047-.1172.5625-.3516.7734-.2109.2344-.4687.3516-.7734.3516h-4.5c-.3047 0-.5742-.1172-.8086-.3516-.2109-.2109-.3164-.4687-.3164-.7734v-3.6562h-2.25V15c0 .3047-.11719.5625-.35156.7734-.21094.2344-.46875.3516-.77344.3516h-4.5c-.30469 0-.57422-.1172-.80859-.3516-.21094-.2109-.31641-.4687-.31641-.7734V8.46094l-.94922.77344c-.11719.09374-.24609.14062-.38672.14062-.16406 0-.30468-.07031-.42187-.21094l-.35157-.42187C.921875 8.625.875 8.50781.875 8.39062c0-.1875.070312-.33984.21094-.45703L9.73438.832031C10.1094.527344 10.5312.375 11 .375s.8906.152344 1.2656.457031l8.6485 7.101559zm-3.7266 6.50391V7.05469L11 1.99219l-6.1875 5.0625v7.38281h3.375v-3.6563c0-.3046.10547-.5624.31641-.7734.23437-.23436.5039-.35155.80859-.35155h3.375c.3047 0 .5625.11719.7734.35155.2344.211.3516.4688.3516.7734v3.6563h3.375z">
                            </path>
                        </svg>
                    </span>
                    <span class="offcanvas__stikcy--toolbar__label">Trang chủ</span>
                </a>
            </li>
            <li class="offcanvas__stikcy--toolbar__list">
                <a class="offcanvas__stikcy--toolbar__btn" href="{{ route('products') }}">
                    <span class="offcanvas__stikcy--toolbar__icon">
                        <svg fill="currentColor" xmlns="http://www.w3.org/2000/svg" width="18.51" height="17.443"
                            viewBox="0 0 448 512">
                            <path
                                d="M416 32H32A32 32 0 0 0 0 64v384a32 32 0 0 0 32 32h384a32 32 0 0 0 32-32V64a32 32 0 0 0-32-32zm-16 48v152H248V80zm-200 0v152H48V80zM48 432V280h152v152zm200 0V280h152v152z">
                            </path>
                        </svg>
                    </span>
                    <span class="offcanvas__stikcy--toolbar__label">Sản phẩm</span>
                </a>
            </li>
            <li class="offcanvas__stikcy--toolbar__list ">
                <a class="offcanvas__stikcy--toolbar__btn search__open--btn" href="javascript:void(0)" data-offcanvas>
                    <span class="offcanvas__stikcy--toolbar__icon">
                        <svg xmlns="http://www.w3.org/2000/svg" width="22.51" height="20.443"
                            viewBox="0 0 512 512">
                            <path d="M221.09 64a157.09 157.09 0 10157.09 157.09A157.1 157.1 0 00221.09 64z"
                                fill="none" stroke="currentColor" stroke-miterlimit="10" stroke-width="32" />
                            <path fill="none" stroke="currentColor" stroke-linecap="round" stroke-miterlimit="10"
                                stroke-width="32" d="M338.29 338.29L448 448" />
                        </svg>
                    </span>
                    <span class="offcanvas__stikcy--toolbar__label">Tìm kiếm</span>
                </a>
            </li>
            <li class="offcanvas__stikcy--toolbar__list">
                <a class="offcanvas__stikcy--toolbar__btn minicart__open--btn" href="javascript:void(0)"
                    data-offcanvas>
                    <span class="offcanvas__stikcy--toolbar__icon">
                        <svg xmlns="http://www.w3.org/2000/svg" width="18.51" height="15.443"
                            viewBox="0 0 18.51 15.443">
                            <path
                                d="M79.963,138.379l-13.358,0-.56-1.927a.871.871,0,0,0-.6-.592l-1.961-.529a.91.91,0,0,0-.226-.03.864.864,0,0,0-.226,1.7l1.491.4,3.026,10.919a1.277,1.277,0,1,0,1.844,1.144.358.358,0,0,0,0-.049h6.163c0,.017,0,.034,0,.049a1.277,1.277,0,1,0,1.434-1.267c-1.531-.247-7.783-.55-7.783-.55l-.205-.8h7.8a.9.9,0,0,0,.863-.651l1.688-5.943h.62a.936.936,0,1,0,0-1.872Zm-9.934,6.474H68.568c-.04,0-.1.008-.125-.085-.034-.118-.082-.283-.082-.283l-1.146-4.037a.061.061,0,0,1,.011-.057.064.064,0,0,1,.053-.025h1.777a.064.064,0,0,1,.063.051l.969,4.34,0,.013a.058.058,0,0,1,0,.019A.063.063,0,0,1,70.03,144.853Zm3.731-4.41-.789,4.359a.066.066,0,0,1-.063.051h-1.1a.064.064,0,0,1-.063-.051l-.789-4.357a.064.064,0,0,1,.013-.055.07.07,0,0,1,.051-.025H73.7a.06.06,0,0,1,.051.025A.064.064,0,0,1,73.76,140.443Zm3.737,0L76.26,144.8a.068.068,0,0,1-.063.049H74.684a.063.063,0,0,1-.051-.025.064.064,0,0,1-.013-.055l.973-4.357a.066.066,0,0,1,.063-.051h1.777a.071.071,0,0,1,.053.025A.076.076,0,0,1,77.5,140.448Z"
                                transform="translate(-62.393 -135.3)" fill="currentColor" />
                        </svg>
                    </span>
                    <span class="offcanvas__stikcy--toolbar__label">Giỏ hàng</span>
                    <span class="items__count"> {{ Cart::instance('default')->count() }}</span>
                </a>
            </li>
        </ul>
    </div>
    <!-- End Offcanvas stikcy toolbar -->

    <!-- Start offCanvas minicart -->
    <div class="offCanvas__minicart">
        <div class="minicart__header ">
            <div class="minicart__header--top d-flex justify-content-between align-items-center">
                <h3 class="minicart__title">Giỏ hàng của bạn</h3>
                <button class="minicart__close--btn" aria-label="minicart close btn" data-offcanvas>
                    <svg class="minicart__close--icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                        <path fill="currentColor" stroke="currentColor" stroke-linecap="round"
                            stroke-linejoin="round" stroke-width="32" d="M368 368L144 144M368 144L144 368" />
                    </svg>
                </button>
            </div>
        </div>
        @if (Cart::instance('default')->count() > 0)
            <div class="minicart__product">
                @foreach (Cart::instance('default')->content() as $item)
                    <div class="minicart__product--items d-flex">
                        <div class="minicart__thumb">
                            <a href="#"><img src="{{ Voyager::image($item->model->image) }}"
                                    alt="prduct-img"></a>
                        </div>
                        <div class="minicart__text">
                            <h4 class="minicart__subtitle"><a href="#">{{ $item->model->name }}</a></h4>

                            <div class="minicart__price">
                                <span class="current__price">{{ number_format($item->price, 0) }}đ</span>

                            </div>
                            <form action="{{ route('cart.destroy', [$item->rowId, 'default']) }}" method="POST"
                                id="delete-item">
                                @csrf()
                                <button class="cart__remove--btn" aria-label="search button"
                                    onclick="document.getElementById('delete-item').submit();" type="button">
                                    <svg fill="currentColor" xmlns="http://www.w3.org/2000/svg"
                                        style="vertical-align: baseline;" viewBox="0 0 24 24" width="16px"
                                        height="16px">
                                        <path
                                            d="M 4.7070312 3.2929688 L 3.2929688 4.7070312 L 10.585938 12 L 3.2929688 19.292969 L 4.7070312 20.707031 L 12 13.414062 L 19.292969 20.707031 L 20.707031 19.292969 L 13.414062 12 L 20.707031 4.7070312 L 19.292969 3.2929688 L 12 10.585938 L 4.7070312 3.2929688 z">
                                        </path>
                                    </svg>
                                </button>
                                @method('DELETE')
                            </form>

                        </div>
                    </div>
                @endforeach
            </div>
            <div class="minicart__amount">
                <div class="minicart__amount_list d-flex justify-content-between">
                    <span>Tổng tiền:</span>
                    <span><b>{{ number_format(Cart::subtotal(), 0) }} đ</b></span>
                </div>
            </div>
        @else
            <div class="coupon__code mb-30">
                <h3 class="coupon__code--title">Chưa có sản phẩm nào trong giỏ hàng </h3>
            </div>
        @endif
        <div class="minicart__button d-flex justify-content-center" style="margin-top: 10px">
            <a class="btn minicart__button--link" href="{{ route('cart.index') }}">Giỏ hàng</a>
            <a class="btn minicart__button--link" href="{{ route('checkout.index') }}">Thanh toán</a>
        </div>
    </div>
    <!-- End offCanvas minicart -->

    <!-- Start serch box area -->
    <div class="predictive__search--box ">
        <div class="predictive__search--box__inner">
            <h2 class="predictive__search--title">Tìm kiếm sản phẩm</h2>
            <form class="predictive__search--form" action="{{ route('search') }}" method="get">
                <label>
                    <input class="predictive__search--input" placeholder="Từ khóa" type="text" name="key">
                </label>
                <button class="predictive__search--button" aria-label="search button"><svg
                        class="product__items--action__btn--svg" xmlns="http://www.w3.org/2000/svg" width="30.51"
                        height="25.443" viewBox="0 0 512 512">
                        <path d="M221.09 64a157.09 157.09 0 10157.09 157.09A157.1 157.1 0 00221.09 64z" fill="none"
                            stroke="currentColor" stroke-miterlimit="10" stroke-width="32" />
                        <path fill="none" stroke="currentColor" stroke-linecap="round" stroke-miterlimit="10"
                            stroke-width="32" d="M338.29 338.29L448 448" />
                    </svg> </button>
            </form>
        </div>
        <button class="predictive__search--close__btn" aria-label="search close" data-offcanvas>
            <svg class="predictive__search--close__icon" xmlns="http://www.w3.org/2000/svg" width="40.51"
                height="30.443" viewBox="0 0 512 512">
                <path fill="currentColor" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                    stroke-width="32" d="M368 368L144 144M368 144L144 368" />
            </svg>
        </button>
    </div>
    <!-- End serch box area -->

</header>
<!-- End header area -->

@section('style')
    <style>
        #expandingInput {
            width: 250px;
            /* Initial width of the input */
            padding: 10px;
            transition: width 0.3s ease;
        }
    </style>
@endsection

@section('scripts')
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            const expandingInput = document.getElementById("expandingInput");

            // Add a click event listener to the input
            expandingInput.addEventListener("click", function() {
                // Set the width to a larger value
                expandingInput.style.width = "393px"; // You can adjust this width as needed
            });

            // Add a blur event listener to reset the width when the input loses focus
            expandingInput.addEventListener("blur", function() {
                // Set the width back to the initial value
                expandingInput.style.width = "200px"; // Adjust this to match the initial width
            });
        });
    </script>
@endsection
