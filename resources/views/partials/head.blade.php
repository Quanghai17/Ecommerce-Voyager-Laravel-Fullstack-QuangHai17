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

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}"></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Merienda One" rel="stylesheet">
    @yield('stylesheet')

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
</head>