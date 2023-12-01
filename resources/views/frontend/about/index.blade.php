@extends('frontend.layouts.default')

@php

@endphp

@section('content')
    <main class="main__content_wrapper">

        <!-- Start breadcrumb section -->
        <section class="breadcrumb__section breadcrumb__bg" style="background-image: url('{{ \TCG\Voyager\Facades\Voyager::image(setting('site.breadcrumb')) }}')">
            <div class="container">
                <div class="row row-cols-1">
                    <div class="col">
                        <div class="breadcrumb__content text-center">
                            <h1 class="breadcrumb__content--title text-white mb-25">Giới thiệu</h1>
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
            <div class="container">
                <div class="row">
                    <div class="col-xxl-12 col-xl-12 col-lg-12">
                        <div class="blog__details--wrapper">
                            <div class="entry__blog">
                                <div class="blog__post--header mb-30">
                                    <h2 class="post__header--title mb-15">{{$about->title}}</h2>
                                </div>
                                {{-- <div class="blog__thumbnail mb-30">
                                    <img class="blog__thumbnail--img border-radius-10"
                                        src="{{ Voyager::image($about->image) }}" alt="{{$about->title}}">
                                </div> --}}
                                <div class="blog__details--content">
                                    <p class="blog__details--content__desc mb-30">{!!$about->body!!} </p>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                    
                </div>
            </div>
        </section>
        <!-- End blog details section -->
    </main>
@endsection
