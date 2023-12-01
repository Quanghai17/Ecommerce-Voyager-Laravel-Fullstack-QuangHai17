@extends('frontend.layouts.default')

@section('content')
    <main class="main__content_wrapper">

        <!-- Start breadcrumb section -->
        <section class="breadcrumb__section breadcrumb__bg" style="background-image: url('{{ \TCG\Voyager\Facades\Voyager::image(setting('site.breadcrumb')) }}')">
            <div class="container">
                <div class="row row-cols-1">
                    <div class="col">
                        <div class="breadcrumb__content text-center">
                            <h1 class="breadcrumb__content--title text-white mb-25">Chi tiết bài viết</h1>
                            <ul class="breadcrumb__content--menu d-flex justify-content-center">
                                <li class="breadcrumb__content--menu__items"><a class="text-white" href="{{route('home')}}">Trang chủ</a>
                                </li>
                                
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End breadcrumb section -->

        <!-- Start blog details section -->
        <section class="blog__details--section section--padding">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xxl-9 col-xl-8 col-lg-8">
                        <div class="blog__details--wrapper">
                            <div class="entry__blog">
                                <div class="blog__post--header mb-30">
                                    <h2 class="post__header--title mb-15">{{ $new->translate()->title }}</h2>
                                </div>
                                {{-- <div class="blog__thumbnail mb-30">
                                    <img class="blog__thumbnail--img border-radius-10"
                                        src="{{ Voyager::image($new->image) }}" alt="blog-img">
                                </div> --}}
                                <div class="blog__details--content">
                                    <p class="blog__details--content__desc">{!!$new->body!!}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xxl-3 col-xl-4 col-lg-4">
                        <div class="blog__sidebar--widget left widget__area">
                            <div class="single__widget widget__search widget__bg">
                                <h2 class="widget__title h3">Tìm kiếm</h2>
                                <form class="widget__search--form" action="{{ route('searchPost') }}" method="get">
                                    <label style="display: flex;justify-content: right;">
                                        <input id="expandingInput" class="widget__search--form__input" placeholder="từ khóa..." name="key"
                                            type="text">
                                            <button class="widget__search--form__btn" aria-label="search button">
                                                <svg class="product__items--action__btn--svg" xmlns="http://www.w3.org/2000/svg"
                                                    width="22.51" height="20.443" viewBox="0 0 512 512">
                                                    <path d="M221.09 64a157.09 157.09 0 10157.09 157.09A157.1 157.1 0 00221.09 64z"
                                                        fill="none" stroke="currentColor" stroke-miterlimit="10"
                                                        stroke-width="32"></path>
                                                    <path fill="none" stroke="currentColor" stroke-linecap="round"
                                                        stroke-miterlimit="10" stroke-width="32" d="M338.29 338.29L448 448">
                                                    </path>
                                                </svg>
                                            </button>
                                    </label>
                                    
                                </form>
                            </div>
                            <div class="single__widget widget__bg">
                                <h2 class="widget__title h3">Danh mục</h2>
                                <ul class="widget__categories--menu">
                                    @foreach($categories as $category)
                                    <li class="widget__categories--menu__list active" style="padding: 5px">
                                        <a class="widget__categories--sub__menu--link d-flex align-items-center"
                                            href="{{route('news')}}"><span class="widget__categories--sub__menu--text">{{$category->name}}</span>
                                        </a>
                                    </li>
                                    @endforeach
                                </ul>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End blog details section -->

    </main>
@endsection

@section('style')

<style>
    #expandingInput {
    width: 200px; /* Initial width of the input */
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
        expandingInput.style.width = "363px"; // You can adjust this width as needed
    });

    // Add a blur event listener to reset the width when the input loses focus
    expandingInput.addEventListener("blur", function() {
        // Set the width back to the initial value
        expandingInput.style.width = "200px"; // Adjust this to match the initial width
    });
});

</script>
@endsection


