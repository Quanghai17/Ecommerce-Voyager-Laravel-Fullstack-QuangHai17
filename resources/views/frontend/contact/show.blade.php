@extends('frontend.layouts.default')
@section('content')
    <main class="main__content_wrapper">
        <!-- Start breadcrumb section -->
        <section class="breadcrumb__section breadcrumb__bg"
            style="background-image: url('{{ \TCG\Voyager\Facades\Voyager::image(setting('site.breadcrumb')) }}')">
            <div class="container">
                <div class="row row-cols-1">
                    <div class="col">
                        <div class="breadcrumb__content text-center">
                            <h1 class="breadcrumb__content--title text-white mb-25">Báo giá sỉ</h1>
                            <ul class="breadcrumb__content--menu d-flex justify-content-center">
                                <li class="breadcrumb__content--menu__items"><a class="text-white"
                                        href="{{ route('home') }}">Trang chủ</a>
                                </li>

                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End breadcrumb section -->

        <div class="checkout__page--area">
            <div class="container">
                <div class="checkout__page--inner d-flex">
                    <div class="main checkout__mian">
                        <header class="main__header checkout__mian--header ">
                            <a class="logo logo__left"><img style="max-width: 60%;"
                                    src="{{ \TCG\Voyager\Facades\Voyager::image(setting('site.logo')) }}"
                                    alt="logo"></a>
                        </header>
                        <main class="main__content_wrapper section--padding pt-0">
                            <form method="post" action="{{ route('partners') }}" id="dynamicForm">
                                @csrf

                                <div class="checkout__content--step section__shipping--address">
                                    {{-- <input type="hidden" name="select_option" id="select_option"> --}}
                                    <div class="checkout__content--step__inner3 border-radius-5">
                                        <div
                                            class="checkout__address--content__header d-flex align-items-center justify-content-between">
                                            <span class="checkout__address--content__title">Thông tin cá nhân</span>
                                        </div>
                                        <div class="checkout__content--input__box--wrapper ">
                                            <div class="row">

                                                <div class="col-12 mb-12">
                                                    <div class="checkout__input--list">
                                                        <label>
                                                            <input class="checkout__input--field border-radius-5"
                                                                name="name" required placeholder="Họ tên" type="text">
                                                        </label>
                                                    </div>
                                                </div>
                                                <div class="col-lg-6 mb-12">
                                                    <div class="checkout__input--list">
                                                        <label>
                                                            <input class="checkout__input--field border-radius-5"
                                                                name="phone" required placeholder="Số điện thoại"
                                                                type="text">
                                                        </label>
                                                    </div>
                                                </div>
                                                <div class="col-lg-6 mb-12">
                                                    <div class="checkout__input--list position__relative">
                                                        <label>
                                                            <input class="checkout__input--field border-radius-5"
                                                                name="email" placeholder="Email" type="text">
                                                        </label>

                                                    </div>
                                                </div>
                                                <div class="col-12 mb-12">
                                                    <div class="checkout__input--list">
                                                        <label>
                                                            <input class="checkout__input--field border-radius-5"
                                                                name="address" required placeholder="Địa chỉ nhận hàng"
                                                                type="text">
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="checkout__content--step section__shipping--address pt-10"
                                    x-data="contact_form">
                                    <div class="section__header mb-25">
                                        <h2 class="section__header--title h3">Chọn sản phẩm</h2>
                                    </div>
                                    <div class="checkout__content--step__inner3 border-radius-5">
                                        <div class="checkout__content--input__box--wrapper ">
                                            <div class="row">
                                                <div class="col-lg-12 mb-12">
                                                    <div class="checkout__input--list checkout__input--select select"
                                                        style="display: flex;
                                                    align-items: center;">
                                                        <select class="checkout__input--select__field border-radius-5"
                                                            id="selectOption" x-model="product">
                                                            <option>Sản phẩm chọn mua </option>
                                                            @foreach ($productAll as $product)
                                                                <option value="{{ $product->name }}">{{ $product->name }}
                                                                </option>
                                                            @endforeach
                                                        </select>


                                                        <a @click="add" class="btn btn-primary"
                                                            style="padding: 0 1.8rem;margin-left:10px">Thêm</a>
                                                    </div>
                                                    <div id="dynamicInputs" style="margin-top:10px">
                                                        <template x-for="(row,index) in rows" :key='index'>
                                                            <div class="input-container">
                                                                <input type="text" name="" class="dynamic-input"
                                                                    id="" x-model='row.name'>
                                                                <input type="number" name=""
                                                                    class="additional-input" id=""
                                                                    x-model='row.quantity'>
                                                                <span class="delete-icon" @click="delete_row(index)"><i
                                                                        class="fas fa-times"></i></span>

                                                            </div>
                                                        </template>
                                                    </div>
                                                    {{-- <a @click="check" class="btn btn-primary" style="padding: 0 1.8rem;margin-left:10px">check</a>    --}}
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <input type="hidden" x-model='JSON.stringify(rows)' name="list_product">
                                </div>

                                <div class="checkout__content--step__footer d-flex align-items-center">
                                    <button class="contact__form--btn btn" type="submit"> <span>Gửi đi</span></button>
                                </div>

                            </form>
                            {{-- <script>
                                document.getElementById('dynamicForm').addEventListener('submit', function() {
                                    var selectedValues = Array.from(document.getElementById('selectOption').selectedOptions, option => option.value);
                                    document.getElementById('dynamicInputsJson').value = JSON.stringify(selectedValues);
                            
                                    console.log(document.getElementById('dynamicInputsJson').value); // Kiểm tra giá trị trong console
                                });
                            </script> --}}
                        </main>

                    </div>
                    <aside class="checkout__sidebar sidebar">
                        <div class="cart__table checkout__product--table">
                            <table class="cart__table--inner">
                                <tbody class="cart__table--body">
                                    @foreach ($products as $product)
                                        <tr class="cart__table--body__items">
                                            <td class="cart__table--body__list">
                                                <div class="product__image two  d-flex align-items-center">
                                                    <div class="product__thumbnail border-radius-5">
                                                        <a href="{{ route('products.show', $product->slug) }}"><img
                                                                class="border-radius-5"
                                                                src="{{ Voyager::image($product->thumbnail('box', 'image')) }}"
                                                                alt="cart-product"></a>
                                                    </div>
                                                    <div class="product__description">
                                                        <p><a
                                                                href="{{ route('products.show', $product->slug) }}">{{ $product->name }}</a>
                                                        </p>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="cart__table--body__list">
                                                <span class="cart__price">Giá:
                                                    @if ($product->promotional_price != '')
                                                        {{ number_format($product->promotional_price, 0) }}
                                                    @else
                                                        {{ number_format($product->price, 0) }}
                                                    @endif
                                                </span>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>

                    </aside>
                </div>
            </div>
        </div>

    </main>
@endsection

@section('js')
    {{-- <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script> --}}
    <script>
        document.addEventListener('alpine:init', () => {
            Alpine.data('contact_form', () => ({
                product: '',
                rows: [],
                init() {},
                add() {
                    this.rows.push({
                        name: this.product,
                        quantity: ''
                    })
                },
                delete_row(index) {
                    this.rows = this.rows.filter((item, i) => i !== index)
                },
                check() {
                    console.log(this.rows)
                }

            }))
        })
    </script>
    {{-- <script>
    function addInput() {
        var selectValue = document.getElementById('selectOption').value;
        let data = [];
        // Tạo một container cho input, additional input và icon xóa
        var container = document.createElement('div');
        container.className = 'input-container';

        // Tạo một input mới
        var newInput = document.createElement('input');
        newInput.type = 'text';
        newInput.className = 'dynamic-input';
        newInput.name = 'dynamicInput';
        newInput.value = selectValue;
        newInput.placeholder = 'Giá trị...';

        // Tạo một input mới cho additional input
        var additionalInput = document.createElement('input');
        additionalInput.type = 'text';
        additionalInput.className = 'additional-input';
        additionalInput.name = 'additionalInput[]';
        additionalInput.placeholder = 'Số lượng...';
        additionalInput.id = 'additionalInput';
        additionalInput.onchange="getQuantity(this.value)"
        // Tạo một span cho icon xóa
        var deleteIcon = document.createElement('span');
        deleteIcon.className = 'delete-icon';
        deleteIcon.innerHTML = '<i class="fas fa-times"></i>';
        deleteIcon.onclick = function() {
            container.remove(); // Xóa container khi icon xóa được nhấp
        };

        // Thêm input, additional input và icon xóa vào container
        container.appendChild(newInput);
        container.appendChild(additionalInput);
        container.appendChild(deleteIcon);

        // Thêm container vào div có id 'dynamicInputs'
        document.getElementById('dynamicInputs').appendChild(container);
        function getQuantity(val) {
            console.log(val)
        }
    }
</script> --}}
@endsection

@section('style')
    <style>
        .input-container {
            display: flex;
            align-items: center;
            margin-bottom: 10px;
        }

        .dynamic-input {
            flex: 1;
            margin-right: 5px;
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        .delete-icon {
            cursor: pointer;
        }

        #dynamicInputs input {
            width: -webkit-fill-available;
            margin-bottom: 10px;
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        .additional-input {
            flex: 1;
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
    </style>
@endsection
