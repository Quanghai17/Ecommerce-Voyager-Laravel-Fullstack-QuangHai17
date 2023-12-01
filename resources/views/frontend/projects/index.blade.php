@extends('frontend.layouts.default')

@section('content')
    <main class="main__content_wrapper">

        <!-- Start breadcrumb section -->
        <section class="breadcrumb__section breadcrumb__bg" style="background-image: url('{{ \TCG\Voyager\Facades\Voyager::image(setting('site.breadcrumb')) }}')">
            <div class="container">
                <div class="row row-cols-1">
                    <div class="col">
                        <div class="breadcrumb__content text-center">
                            <h1 class="breadcrumb__content--title text-white mb-25">Dự án tiêu biểu</h1>
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
            <div class="container" style="width: 94%;">
                <div class="row row-md-reverse">
                  
                    <div class="col-xxl-12 col-xl-12 col-lg-12">
                        <div class="blog__wrapper">
                            <div class="row mb--n30">
                                @foreach ($projects as $project)
                                <div class="col-xxl-4 col-xl-6 col-lg-6 col-md-6 col-sm-6 col-6 custom-col mb-30">
                                    <div class="blog__items">
                                        <div class="blog__items--thumbnail">
                                            <a class="blog__items--link" href="{{ route('projects.show', $project->slug) }}"><img
                                                    class="blog__items--img" src="{{ Voyager::image($project->thumbnail('cropped', 'image')) }}"
                                                    alt="blog-img"></a>
                                        </div>
                                        <div class="blog__items--content">
                                            
                                            <h3 class="blog__items--title"><a href="{{ route('projects.show', $project->slug) }}">{{ $project->title }}</a></h3>
                                            <p class="blog__items--desc" style="
                                                display: -webkit-box;
                                                -webkit-line-clamp: 2;
                                                -webkit-box-orient: vertical;  
                                                overflow: hidden;
                                            "> {{ $project->desc }}</p>
                                            <a class="blog__items--readmore" href="{{ route('projects.show', $project->slug) }}">Đọc thêm <svg
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
                                    {{ $projects->links('frontend.layouts.partials.paginate') }}
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
