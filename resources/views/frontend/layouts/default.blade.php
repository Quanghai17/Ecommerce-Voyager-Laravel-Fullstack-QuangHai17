<!DOCTYPE html>
<html lang="{{ App::getLocale() }}">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="{{ $pageMeta['meta_description'] ?? setting('site.description') }}" />
    <meta name="content" content="{{ $pageMeta['meta_content'] ?? setting('site.content') }}" />
    <meta name="keywords" content="{{ $pageMeta['title'] ?? setting('site.title') }}">

    <title>{{ $pageMeta['title'] ?? setting('site.title') }}</title>
    {{-- <script src="//unpkg.com/alpinejs" defer></script> --}}
    <link rel="shortcut icon" href="{{ \TCG\Voyager\Facades\Voyager::image(setting('site.favico')) }}" type="image/png">

    <meta property="og:image"
        content="{{ \TCG\Voyager\Facades\Voyager::image($pageMeta['image'] ?? setting('site.logo')) }}" />
    <meta property="og:url" content="{{ \Request::fullUrl() }}" />
    <meta property="og:type" content="Website" />
    <meta property="og:title" content="{{ $pageMeta['title'] ?? setting('site.title') }}" />
    <meta property="og:description" content="{{ $pageMeta['meta_description'] ?? setting('site.description') }}" />
    <meta property="og:content" content="{{ $pageMeta['meta_content'] ?? setting('site.content') }}" />
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <!-- Place favicon.ico in the root directory -->
    <link rel="icon" href="{{ \TCG\Voyager\Facades\Voyager::image(setting('site.favico')) }}"
        type="image/x-icon" />
    <link rel="shortcut icon" type="image/x-icon"
        href="{{ \TCG\Voyager\Facades\Voyager::image(setting('site.favico')) }}">

    <!-- CSS here -->
    <!-- ======= All CSS Plugins here ======== -->
    <link rel="stylesheet" href="{{ asset('assets/css/plugins/swiper-bundle.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/plugins/glightbox.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/plugins/woocustom-reviews.css') }}">
    <link
        href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,300;0,400;0,700;0,900;1,300;1,400;1,700;1,900&amp;family=Lora:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500;1,600;1,700&amp;family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,300;1,400;1,500;1,600;1,700;1,800;1,900&amp;display=swap"
        rel="stylesheet">

    <!-- Plugin css -->
    <link rel="stylesheet" href="{{ asset('assets/css/vendor/bootstrap.min.css') }}">

    <!-- Custom Style CSS -->
    <link rel="stylesheet" href="{{ asset('assets/css/style.css') }}">
    {{-- <link rel="stylesheet" href="{{ asset('assets/css/custom01.css') }}"> --}}
    {{-- <link rel="stylesheet" href="{{ asset('assets/css/plugins/woocustom.css') }}"> --}}
    <link rel="stylesheet" href="{{ asset('assets/css/plugins/magnific-popup.css') }}">

    @yield('style')
    @stack('style')

    @yield('head')
    @stack('head')
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>
    @include('frontend.layouts.partials.alert')


    @include('frontend.layouts.partials.header')

    @yield('content')

    @include('frontend.layouts.partials.footer')
    
    @include('frontend.components.social')

    <!-- JS here -->
    {{-- <div class="fixed-right">
      <a target="_blank" href="https://m.me/nongnghieptrongpho" title="zalo" class="zalo">
        <img src="{{ asset('assets/img/mess.png') }}" alt="icon">
      </a>
      
      <a target="_blank" href="zalo://conversation?phone={{ setting('network.zalo') }}" title="zalo" class="zalo">
          <img src="https://hallobaby.vn/images/zalo.png" alt="icon">
      </a>
      <a href="tel:{{ setting('site.phone') }}" title="19008690 - 0963064422" class="phone">
          <img src="https://hallobaby.vn/images/phone.png" alt="icon">
      </a>
      
  </div>
  <style>
    .fixed-right {
        position: fixed;
        z-index: 9999;
        right: 22px;
        transform: translateY(-50%);
        top: calc(70% + 10px)!important;
        width: 50px;
        text-align: center;
        overflow: hidden;
    }
    .fixed-right a {
        margin-bottom: 10px;
        width: 40px;
        height: 40px;
        display: inline-block;
    }
    .fixed-right img {
        opacity: 1;
        transition: opacity .3s;
        max-width: 100%;
        height: auto;
    }
    .fixed-right a {
        margin-bottom: 10px;
        width: 40px;
        height: 40px;
        display: inline-block;
    }
    .fixed-right a.phone {
        border-radius: 50%;
        background: #64bc46;
        padding: 6px;
        animation: quick-alo-circle-img-anim 1s infinite ease-in-out;
    }
    @media  screen and (min-width: 1px) and (max-width: 1000px) {
        .fixed-right img {
            border: medium none;
            height: auto !important;
            line-height: normal;
            margin: 0;
            max-width: 100% !important;
            padding: 0;
            vertical-align: middle;
            width: auto !important;
            transition: all .2s ease-in;
        }
    }
    .tooltip
     {
        position: absolute;
        display: none;
        background-color: #333;
        color: #6b6666;
        padding: 5px;
        border-radius: 5px;
        font-size: 12px;
    }
    .zalo + .tooltip {
        display: block;
    }
    </style> --}}


    <!-- Scroll top bar -->
    <button id="scroll__top"><svg xmlns="http://www.w3.org/2000/svg" class="ionicon" viewBox="0 0 512 512">
            <path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                stroke-width="48" d="M112 244l144-144 144 144M256 120v292" />
        </svg>
    </button>
    <div id="fb-root"></div>
    <script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v18.0"
        nonce="1CQR31ve"></script>
    <!-- All Script JS Plugins here  -->

    <script src="{{ asset('assets/js/vendor/bootstrap.min.js') }}" defer="defer"></script>
    <script src="{{ asset('assets/js/plugins/swiper-bundle.min.js') }}"></script>
    <script src="{{ asset('assets/js/plugins/glightbox.min.js') }}"></script>

    <!-- Customscript js -->
    <script src="{{ asset('assets/js/script.js') }}"></script>

    @yield('js')
    @stack('js')
    @yield('scripts')
</body>

</html>
