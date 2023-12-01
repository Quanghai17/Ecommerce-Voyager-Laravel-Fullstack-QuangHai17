@extends('frontend.layouts.default')

@section('content')
    <main class="main__content_wrapper">

        <!-- Start breadcrumb section -->
        <section class="breadcrumb__section breadcrumb__bg" style="background-image: url('{{ \TCG\Voyager\Facades\Voyager::image(setting('site.breadcrumb')) }}')">
            <div class="container">
                <div class="row row-cols-1">
                    <div class="col">
                        <div class="breadcrumb__content text-center">
                            <h1 class="breadcrumb__content--title text-white mb-25">Kiến thức - Kinh nghiệm</h1>
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

        <!-- Start blog section -->
        <section class="blog__section section--padding">
            <div class="container-fluid" style="width: 94%;">
                <div class="row row-md-reverse">
                    <div class="col-xxl-3 col-xl-4 col-lg-4">
                        <div class="blog__sidebar--widget left widget__area">
                            <div class="single__widget widget__search widget__bg">
                                <h2 class="widget__title h3">Tìm kiếm</h2>
                                <form class="widget__search--form" action="{{ route('searchPost') }}" method="get">
                                    <label>
                                        <input class="widget__search--form__input" placeholder="từ khóa..." type="text" name="key">
                                    </label>
                                    <button class="widget__search--form__btn" aria-label="search button">
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
                    <div class="col-xxl-9 col-xl-8 col-lg-8">
                        <div class="blog__wrapper">
                            <div class="row mb--n30">
                                @foreach ($news as $post)
                                <div class="col-xxl-4 col-xl-6 col-lg-6 col-md-6 col-sm-6 col-6 custom-col mb-30">
                                    <div class="blog__items">
                                        <div class="blog__items--thumbnail">
                                            <a class="blog__items--link" href="{{ route('news.show', $post->slug) }}"><img
                                                    class="blog__items--img" src="{{ Voyager::image($post->thumbnail('cropped', 'image')) }}"
                                                    alt="{{ $post->translate()->title }}"></a>
                                        </div>
                                        <div class="blog__items--content">
                                            
                                            <h3 class="blog__items--title"><a href="{{ route('news.show', $post->slug) }}">{{ $post->translate()->title }}</a></h3>
                                            <p class="blog__items--desc" style="
                                                display: -webkit-box;
                                                -webkit-line-clamp: 2;
                                                -webkit-box-orient: vertical;  
                                                overflow: hidden;
                                            "> {{ $post->translate()->excerpt }}</p>
                                            <a class="blog__items--readmore" href="{{ route('news.show', $post->slug) }}">Đọc thêm <svg
                                                    class="blog__items--readmore__icon" xmlns="http://www.w3.org/2000/svg"
                                                    width="6.2" height="6.2" viewBox="0 0 6.2 6.2">
                                                    <path
                                                        d="M7.1,4l-.546.546L8.716,6.713H4v.775H8.716L6.554,9.654,7.1,10.2,9.233,8.067,10.2,7.1Z"
                                                        transform="translate(-4 -4)" fill="currentColor"></path>
                                                </svg>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                @endforeach
                            </div>
                            <div class="pagination__area ">
                                <nav class="pagination justify-content-center">
                                    {{ $news->links('frontend.layouts.partials.paginate') }}
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End blog section -->
    </main>
@endsection

@section('js')
@endsection
