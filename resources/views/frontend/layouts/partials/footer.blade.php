@php
$menu = menu('main', '_json');
$categories = \App\Category::limit(4)->get();
$pages = \TCG\Voyager\Models\Page::where('status', 'ACTIVE')->where('type', 'chinh-sach')->get();
// dd($menu);
@endphp
 <!-- Start footer section -->
 <footer class="footer__section footer__bg" style="color: black">
    <div class="container">
        <div class="footer__top">
            <div class="row main__footer--wrapper footer__top--row">
                <div class="col-lg-3 footer__col--width col-md-7 footer__col--padding footer__col--order">
                    <div class="footer__widget">
                        <h3 class="footer__widget--title sm__footer--widget__bock">Giới thiệu
                            <button class="footer__widget--button" aria-label="footer widget button">
                                <svg class="footer__widget--title__arrowdown--icon"
                                    xmlns="http://www.w3.org/2000/svg" width="12.355" height="8.394"
                                    viewBox="0 0 10.355 6.394">
                                    <path d="M15.138,8.59l-3.961,3.952L7.217,8.59,6,9.807l5.178,5.178,5.178-5.178Z"
                                        transform="translate(-6 -8.59)" fill="currentColor"></path>
                                </svg>
                            </button>
                        </h3>
                        <div class="footer__widget--inner">
                            <a class="footer__widget--logo" href="{{route('home')}}"><img src="{{ \TCG\Voyager\Facades\Voyager::image(setting('site.logo')) }}"
                                    alt="footer-logo"></a>
                            <p class="footer__widget--desc m-0">{{setting('site.description')}}</p>
                            <ul class="footer__widget--social d-flex">
                                <li class="footer__widget--social__list">
                                    <a class="footer__widget--social__icon" target="_blank"
                                        href="{{setting('network.social_facebook')}}">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="7.667" height="16.524"
                                            viewBox="0 0 7.667 16.524">
                                            <path data-name="Path 237"
                                                d="M967.495,353.678h-2.3v8.253h-3.437v-8.253H960.13V350.77h1.624v-1.888a4.087,4.087,0,0,1,.264-1.492,2.9,2.9,0,0,1,1.039-1.379,3.626,3.626,0,0,1,2.153-.6l2.549.019v2.833h-1.851a.732.732,0,0,0-.472.151.8.8,0,0,0-.246.642v1.719H967.8Z"
                                                transform="translate(-960.13 -345.407)" fill="currentColor" />
                                        </svg>
                                        <span class="visually-hidden">Facebook</span>
                                    </a>
                                </li>
                                <li class="footer__widget--social__list">
                                    <a class="footer__widget--social__icon" target="_blank" style="background: #ffffff;"
                                        href="{{setting('network.social_tiktok')}}">
                                        <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="100" height="100" viewBox="0,0,256,256">
                                            <g fill="#034f10" fill-rule="nonzero" stroke="none" stroke-width="1" stroke-linecap="butt" stroke-linejoin="miter" stroke-miterlimit="10" stroke-dasharray="" stroke-dashoffset="0" font-family="none" font-weight="none" font-size="none" text-anchor="none" style="mix-blend-mode: normal"><g transform="scale(5.12,5.12)"><path d="M41,4h-32c-2.757,0 -5,2.243 -5,5v32c0,2.757 2.243,5 5,5h32c2.757,0 5,-2.243 5,-5v-32c0,-2.757 -2.243,-5 -5,-5zM37.006,22.323c-0.227,0.021 -0.457,0.035 -0.69,0.035c-2.623,0 -4.928,-1.349 -6.269,-3.388c0,5.349 0,11.435 0,11.537c0,4.709 -3.818,8.527 -8.527,8.527c-4.709,0 -8.527,-3.818 -8.527,-8.527c0,-4.709 3.818,-8.527 8.527,-8.527c0.178,0 0.352,0.016 0.527,0.027v4.202c-0.175,-0.021 -0.347,-0.053 -0.527,-0.053c-2.404,0 -4.352,1.948 -4.352,4.352c0,2.404 1.948,4.352 4.352,4.352c2.404,0 4.527,-1.894 4.527,-4.298c0,-0.095 0.042,-19.594 0.042,-19.594h4.016c0.378,3.591 3.277,6.425 6.901,6.685z"></path></g></g>
                                            </svg>
                                    </a>
                                </li>
                                <li class="footer__widget--social__list">
                                    <a class="footer__widget--social__icon" target="_blank"
                                        href="{{setting('network.social_youtube')}}">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16.49" height="11.582"
                                            viewBox="0 0 16.49 11.582">
                                            <path data-name="Path 321"
                                                d="M967.759,1365.592q0,1.377-.019,1.717-.076,1.114-.151,1.622a3.981,3.981,0,0,1-.245.925,1.847,1.847,0,0,1-.453.717,2.171,2.171,0,0,1-1.151.6q-3.585.265-7.641.189-2.377-.038-3.387-.085a11.337,11.337,0,0,1-1.5-.142,2.206,2.206,0,0,1-1.113-.585,2.562,2.562,0,0,1-.528-1.037,3.523,3.523,0,0,1-.141-.585c-.032-.2-.06-.5-.085-.906a38.894,38.894,0,0,1,0-4.867l.113-.925a4.382,4.382,0,0,1,.208-.906,2.069,2.069,0,0,1,.491-.755,2.409,2.409,0,0,1,1.113-.566,19.2,19.2,0,0,1,2.292-.151q1.82-.056,3.953-.056t3.952.066q1.821.067,2.311.142a2.3,2.3,0,0,1,.726.283,1.865,1.865,0,0,1,.557.49,3.425,3.425,0,0,1,.434,1.019,5.72,5.72,0,0,1,.189,1.075q0,.095.057,1C967.752,1364.1,967.759,1364.677,967.759,1365.592Zm-7.6.925q1.49-.754,2.113-1.094l-4.434-2.339v4.66Q958.609,1367.311,960.156,1366.517Z"
                                                transform="translate(-951.269 -1359.8)" fill="currentColor" />
                                        </svg>
                                        <span class="visually-hidden">Youtube</span>
                                    </a>
                                </li>
                                <li class="footer__widget--social__list">
                                    <a class="footer__widget--social__icon" target="_blank" href="{{setting('network.social_instagram')}}">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="17.497" height="17.492" viewBox="0 0 19.497 19.492">
                                            <path data-name="Icon awesome-instagram" d="M9.747,6.24a5,5,0,1,0,5,5A4.99,4.99,0,0,0,9.747,6.24Zm0,8.247A3.249,3.249,0,1,1,13,11.238a3.255,3.255,0,0,1-3.249,3.249Zm6.368-8.451A1.166,1.166,0,1,1,14.949,4.87,1.163,1.163,0,0,1,16.115,6.036Zm3.31,1.183A5.769,5.769,0,0,0,17.85,3.135,5.807,5.807,0,0,0,13.766,1.56c-1.609-.091-6.433-.091-8.042,0A5.8,5.8,0,0,0,1.64,3.13,5.788,5.788,0,0,0,.065,7.215c-.091,1.609-.091,6.433,0,8.042A5.769,5.769,0,0,0,1.64,19.341a5.814,5.814,0,0,0,4.084,1.575c1.609.091,6.433.091,8.042,0a5.769,5.769,0,0,0,4.084-1.575,5.807,5.807,0,0,0,1.575-4.084c.091-1.609.091-6.429,0-8.038Zm-2.079,9.765a3.289,3.289,0,0,1-1.853,1.853c-1.283.509-4.328.391-5.746.391S5.28,19.341,4,18.837a3.289,3.289,0,0,1-1.853-1.853c-.509-1.283-.391-4.328-.391-5.746s-.113-4.467.391-5.746A3.289,3.289,0,0,1,4,3.639c1.283-.509,4.328-.391,5.746-.391s4.467-.113,5.746.391a3.289,3.289,0,0,1,1.853,1.853c.509,1.283.391,4.328.391,5.746S17.855,15.705,17.346,16.984Z" transform="translate(0.004 -1.492)" fill="currentColor"></path>
                                        </svg>
                                        <span class="visually-hidden">Instagram</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 footer__col--width col-md-4 footer__col--padding">
                    <div class="footer__widget">
                        <h3 class="footer__widget--title">Danh mục
                            <button class="footer__widget--button" aria-label="footer widget button">
                                <svg class="footer__widget--title__arrowdown--icon"
                                    xmlns="http://www.w3.org/2000/svg" width="12.355" height="8.394"
                                    viewBox="0 0 10.355 6.394">
                                    <path d="M15.138,8.59l-3.961,3.952L7.217,8.59,6,9.807l5.178,5.178,5.178-5.178Z"
                                        transform="translate(-6 -8.59)" fill="currentColor"></path>
                                </svg>
                            </button>
                        </h3>
                        <ul class="footer__widget--menu footer__widget--inner">
                            @foreach($categories as $category)
                            <li class="footer__widget--menu__list"><a class="footer__widget--menu__text"
                                    href="{{ route('categories.category', $category->slug) }}">{{$category->name}}</a></li>
                            @endforeach
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2 footer__col--width col-md-4 footer__col--padding">
                    <div class="footer__widget">
                        <h3 class="footer__widget--title">Chính sách
                            <button class="footer__widget--button" aria-label="footer widget button">
                                <svg class="footer__widget--title__arrowdown--icon"
                                    xmlns="http://www.w3.org/2000/svg" width="12.355" height="8.394"
                                    viewBox="0 0 10.355 6.394">
                                    <path d="M15.138,8.59l-3.961,3.952L7.217,8.59,6,9.807l5.178,5.178,5.178-5.178Z"
                                        transform="translate(-6 -8.59)" fill="currentColor"></path>
                                </svg>
                            </button>
                        </h3>
                        <ul class="footer__widget--menu footer__widget--inner">
                            @foreach($pages as $page)
                            <li class="footer__widget--menu__list"><a class="footer__widget--menu__text"
                                    href="{{route('about', $page->slug)}}">{{$page->title}}</a></li>
                            @endforeach       
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 footer__col--width col-md-4 footer__col--padding">
                    <div class="footer__widget">
                        <h3 class="footer__widget--title">Liên hệ
                            <button class="footer__widget--button" aria-label="footer widget button">
                                <svg class="footer__widget--title__arrowdown--icon"
                                    xmlns="http://www.w3.org/2000/svg" width="12.355" height="8.394"
                                    viewBox="0 0 10.355 6.394">
                                    <path d="M15.138,8.59l-3.961,3.952L7.217,8.59,6,9.807l5.178,5.178,5.178-5.178Z"
                                        transform="translate(-6 -8.59)" fill="currentColor"></path>
                                </svg>
                            </button>
                        </h3>
                        <ul class="footer__widget--menu footer__widget--inner">
                            <li class="footer__widget--menu__list"><a class="footer__widget--menu__text"
                                href="tel:{{setting('site.phone')}}">Số điện thoại: {{setting('site.phone')}}</a></li>
                            <li class="footer__widget--menu__list"><a class="footer__widget--menu__text"
                                    href="mailto:{{setting('site.email')}}">Email: {{setting('site.email')}}</a></li>
                            <li class="footer__widget--menu__list"><a class="footer__widget--menu__text"
                                    href="{{route('contact')}}">Địa chỉ: {{setting('site.address')}}</a></li>
                            
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer__bottom">
            <div class="row justify-content-between align-items-center">
                <div class="col-12 col-md-auto">
                    <p class="copyright__content">Copyright © {{ date('Y') }} <a class="copyright__content--link text__primary"
                            href="/">{{setting('site.title')}}</a> . All Rights Reserved.Design By <a href="https://kennatech.vn/">KennaTech</a></p>
                </div>
                
            </div>
        </div>
    </div>
    <img class="footer__position--shape__one" src="{{ asset('assets/img/other/footer-shape1.png') }}" alt="footer-shape">
    <img class="footer__position--shape__two" src="{{ asset('assets/img/other/footer-shape2.png') }}" alt="footer-shape">
</footer>
<!-- End footer section -->