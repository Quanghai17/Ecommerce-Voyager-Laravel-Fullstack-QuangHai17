<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
@include('partials.head')
<script>
    $(function() {
        AOS.init();
    });
</script>
<body>
    <div id='app'>

        <div class="" >
            @include('partials.session')
            @include('partials.errors')
        </div>
    </div>
</body>
@yield('scripts')
</html>
