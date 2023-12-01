@extends('frontend.layouts.default')
@section('content')
    <main class="main__content_wrapper">

        <!-- Start breadcrumb section -->
        <section class="breadcrumb__section breadcrumb__bg" style="background-image: url('{{ \TCG\Voyager\Facades\Voyager::image(setting('site.breadcrumb')) }}')">
            <div class="container">
                <div class="row row-cols-1">
                    <div class="col">
                        <div class="breadcrumb__content text-center">
                            <h1 class="breadcrumb__content--title text-white mb-25">Liên hệ</h1>
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

        <!-- Start contact section -->
        <section class="contact__section section--padding">
            <div class="container">
                <div class="main__contact--area position__relative">

                    <div class="contact__form">
                        <h3 class="contact__form--title mb-40">Thông tin liên hệ</h3>
                        <form class="contact__form--inner" method="post" action="{{route('feedback')}}">
                            @csrf  
                            <div class="row">
                                <div class="col-lg-6 col-md-6">
                                    <div class="contact__form--list mb-20">
                                        <label class="contact__form--label" for="input1">Họ tên <span
                                                class="contact__form--label__star">*</span></label>
                                        <input class="contact__form--input"  name="name" id="input1" required
                                            placeholder="" type="text">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6">
                                    <div class="contact__form--list mb-20">
                                        <label class="contact__form--label" for="input2">Địa chỉ <span
                                                class="contact__form--label__star">*</span></label>
                                        <input class="contact__form--input" name="address" id="input2" required
                                            placeholder="" type="text">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6">
                                    <div class="contact__form--list mb-20">
                                        <label class="contact__form--label" for="input3">Số điện thoại <span
                                                class="contact__form--label__star">*</span></label>
                                        <input class="contact__form--input" name="phone" id="input3" required
                                            placeholder="" type="text">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6">
                                    <div class="contact__form--list mb-20">
                                        <label class="contact__form--label" for="input4">Email <span
                                                class="contact__form--label__star">*</span></label>
                                        <input class="contact__form--input"  name="email" id="input4"   
                                            placeholder="" type="text">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="contact__form--list mb-15">
                                        <label class="contact__form--label" for="input5">Nội dung <span
                                                class="contact__form--label__star">*</span></label>
                                        <textarea class="contact__form--textarea" name="content" id="input5" placeholder="" required></textarea>
                                    </div>
                                </div>
                            </div>
                            <button class="contact__form--btn btn" type="submit"> <span>Gửi đi</span></button>
                        </form>
                    </div>
                    <div class="contact__info border-radius-5">
                        <div class="contact__info--items">
                            <h3 class="contact__info--content__title text-white mb-15">Thông tin</h3>
                            <div class="contact__info--items__inner d-flex">
                                <div class="contact__info--icon">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="31.568" height="31.128"
                                        viewBox="0 0 31.568 31.128">
                                        <path id="ic_phone_forwarded_24px"
                                            d="M26.676,16.564l7.892-7.782L26.676,1V5.669H20.362v6.226h6.314Zm3.157,7a18.162,18.162,0,0,1-5.635-.887,1.627,1.627,0,0,0-1.61.374l-3.472,3.424a23.585,23.585,0,0,1-10.4-10.257l3.472-3.44a1.48,1.48,0,0,0,.395-1.556,17.457,17.457,0,0,1-.9-5.556A1.572,1.572,0,0,0,10.1,4.113H4.578A1.572,1.572,0,0,0,3,5.669,26.645,26.645,0,0,0,29.832,32.128a1.572,1.572,0,0,0,1.578-1.556V25.124A1.572,1.572,0,0,0,29.832,23.568Z"
                                            transform="translate(-3 -1)" fill="currentColor"></path>
                                    </svg>
                                </div>
                                <div class="contact__info--content">
                                    <p class="contact__info--content__desc text-white">
                                         <a href="tel:{{setting('site.phone')}}">{{setting('site.phone')}}</a></p>
                                </div>
                            </div>
                        </div>
                        <div class="contact__info--items">
                            <h3 class="contact__info--content__title text-white mb-15">Email</h3>
                            <div class="contact__info--items__inner d-flex">
                                <div class="contact__info--icon">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="31.57" height="31.13"
                                        viewBox="0 0 31.57 31.13">
                                        <path id="ic_email_24px"
                                            d="M30.413,4H5.157C3.421,4,2.016,5.751,2.016,7.891L2,31.239c0,2.14,1.421,3.891,3.157,3.891H30.413c1.736,0,3.157-1.751,3.157-3.891V7.891C33.57,5.751,32.149,4,30.413,4Zm0,7.783L17.785,21.511,5.157,11.783V7.891l12.628,9.728L30.413,7.891Z"
                                            transform="translate(-2 -4)" fill="currentColor"></path>
                                    </svg>
                                </div>
                                <div class="contact__info--content">
                                    <p class="contact__info--content__desc text-white"> <a
                                            href="mailto:{{setting('site.email')}}">{{setting('site.email')}}</a></p>
                                </div>
                            </div>
                        </div>
                        <div class="contact__info--items">
                            <h3 class="contact__info--content__title text-white mb-15">Địa chỉ</h3>
                            <div class="contact__info--items__inner d-flex">
                                <div class="contact__info--icon">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="31.57" height="31.13"
                                        viewBox="0 0 31.57 31.13">
                                        <path id="ic_account_balance_24px"
                                            d="M5.323,14.341V24.718h4.985V14.341Zm9.969,0V24.718h4.985V14.341ZM2,32.13H33.57V27.683H2ZM25.262,14.341V24.718h4.985V14.341ZM17.785,1,2,8.412v2.965H33.57V8.412Z"
                                            transform="translate(-2 -1)" fill="currentColor"></path>
                                    </svg>
                                </div>
                                <div class="contact__info--content">
                                    <p class="contact__info--content__desc text-white">{{setting('site.address')}}</p>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
        </section>
        <!-- End contact section -->

        <!-- Start contact map area -->
        <div class="contact__map--area section--padding pt-0" style="padding-bottom: 5px;">
            {!!setting('site.map_contact')!!}
        </div>
        <!-- End contact map area -->

    </main>
@endsection
