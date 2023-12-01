@extends('voyager::master')

@section('page_title', __('voyager::generic.view').' '.$dataType->getTranslatedAttribute('display_name_singular'))

@section('page_header')
    <link rel="stylesheet" href="{{ asset('assets/admin/style.css') }}">
     <!-- Fontawesome css -->
     <link rel="stylesheet" type="text/css" href="{{ asset('assets/admin/font-awesome.css') }}">

     <!-- Linear Icon css -->
     <link rel="stylesheet" href="{{ asset('assets/admin/linearicon.css') }}">
 
     <!-- Themify icon css -->
     <link rel="stylesheet" type="text/css" href="{{ asset('assets/admin/themify.css') }}">
 
     <!-- Feather icon css -->
     <link rel="stylesheet" type="text/css" href="{{ asset('assets/admin/feather-icon.css') }}">
 
     <!-- Plugins css -->
     <link rel="stylesheet" type="text/css" href="{{ asset('assets/admin/scrollbar.css') }}">
     <link rel="stylesheet" type="text/css" href="{{ asset('assets/admin/animate.css') }}">
 
     <!-- Bootstrap css -->
     <link rel="stylesheet" type="text/css" href="{{ asset('assets/admin/bootstrap.css') }}">
 
     <!-- App css -->
     <link rel="stylesheet" type="text/css" href="{{ asset('assets/admin/style.css') }}">
 
     <!-- Responsive css -->
     <link rel="stylesheet" type="text/css" href="{{ asset('assets/admin/responsive.css') }}">
    <h1 class="page-title">
        <i class="{{ $dataType->icon }}"></i> {{ __('voyager::generic.viewing') }} {{ ucfirst($dataType->getTranslatedAttribute('display_name_singular')) }} &nbsp;

        @can('edit', $dataTypeContent)
            <a href="{{ route('voyager.'.$dataType->slug.'.edit', $dataTypeContent->getKey()) }}" class="btn btn-info">
                <span class="glyphicon glyphicon-pencil"></span>&nbsp;
                {{ __('voyager::generic.edit') }}
            </a>
        @endcan
        @can('delete', $dataTypeContent)
            @if($isSoftDeleted)
                <a href="{{ route('voyager.'.$dataType->slug.'.restore', $dataTypeContent->getKey()) }}" title="{{ __('voyager::generic.restore') }}" class="btn btn-default restore" data-id="{{ $dataTypeContent->getKey() }}" id="restore-{{ $dataTypeContent->getKey() }}">
                    <i class="voyager-trash"></i> <span class="hidden-xs hidden-sm">{{ __('voyager::generic.restore') }}</span>
                </a>
            @else
                <a href="javascript:;" title="{{ __('voyager::generic.delete') }}" class="btn btn-danger delete" data-id="{{ $dataTypeContent->getKey() }}" id="delete-{{ $dataTypeContent->getKey() }}">
                    <i class="voyager-trash"></i> <span class="hidden-xs hidden-sm">{{ __('voyager::generic.delete') }}</span>
                </a>
            @endif
        @endcan

        <a href="{{ route('voyager.'.$dataType->slug.'.index') }}" class="btn btn-warning">
            <span class="glyphicon glyphicon-list"></span>&nbsp;
            {{ __('voyager::generic.return_to_list') }}
        </a>
    </h1>
    @include('voyager::multilingual.language-selector')
@stop

@section('content')
    {{-- <div class="page-content read container-fluid">
        <div class="row">
            <div class="col-md-12">

                <div class="panel panel-bordered" style="padding-bottom:5px;">
                    <!-- form start -->
                    @foreach($dataType->readRows as $row)
                        @php
                        if ($dataTypeContent->{$row->field.'_read'}) {
                            $dataTypeContent->{$row->field} = $dataTypeContent->{$row->field.'_read'};
                        }
                        @endphp
                        <div class="panel-heading" style="border-bottom:0;">
                            <h3 class="panel-title">{{ $row->getTranslatedAttribute('display_name') }}</h3>
                        </div>

                        <div class="panel-body" style="padding-top:0;">
                            @if (isset($row->details->view))
                                @include($row->details->view, ['row' => $row, 'dataType' => $dataType, 'dataTypeContent' => $dataTypeContent, 'content' => $dataTypeContent->{$row->field}, 'action' => 'read'])
                            @elseif($row->type == "image")
                                <img class="img-responsive"
                                    src="{{ filter_var($dataTypeContent->{$row->field}, FILTER_VALIDATE_URL) ? $dataTypeContent->{$row->field} : Voyager::image($dataTypeContent->{$row->field}) }}">
                            @elseif($row->type == 'multiple_images')
                                @if(json_decode($dataTypeContent->{$row->field}))
                                    @foreach(json_decode($dataTypeContent->{$row->field}) as $file)
                                        <img class="img-responsive"
                                            src="{{ filter_var($file, FILTER_VALIDATE_URL) ? $file : Voyager::image($file) }}">
                                    @endforeach
                                @else
                                    <img class="img-responsive"
                                        src="{{ filter_var($dataTypeContent->{$row->field}, FILTER_VALIDATE_URL) ? $dataTypeContent->{$row->field} : Voyager::image($dataTypeContent->{$row->field}) }}">
                                @endif
                            @elseif($row->type == 'relationship')
                                @if ($row->display_name == 'Order Products')
                                    <table class="table table-borderless" style="width:80%">
                                        <thead>
                                            <tr>
                                                <th scope="col">Sản phẩm</th>
                                                <th scope="col">Hình ảnh</th>
                                                <th scope="col">Giá bán</th>
                                                <th scope="col">Mô tả</th>
                                                <th scope="col">Số lượng chọn mua</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($products as $product)
                                                <tr>
                                                    <th>{{ $product->name }}</th>
                                                    <th><img src="{{ productImage($product->image) }}" width="70" height="70"></th>
                                                    <th>{{ $product->price }}</th>
                                                    <th>{{ $product->details }}</th>
                                                    <td>{{ $product->pivot->quantity }}</td>
                                                </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                @else
                                    @include('voyager::formfields.relationship', ['view' => 'read', 'options' => $row->details])
                                @endif
                            @elseif($row->type == 'select_dropdown' && property_exists($row->details, 'options') &&
                                    !empty($row->details->options->{$dataTypeContent->{$row->field}})
                            )
                                <?php echo $row->details->options->{$dataTypeContent->{$row->field}};?>
                            @elseif($row->type == 'select_multiple')
                                @if(property_exists($row->details, 'relationship'))

                                    @foreach(json_decode($dataTypeContent->{$row->field}) as $item)
                                        {{ $item->{$row->field}  }}
                                    @endforeach

                                @elseif(property_exists($row->details, 'options'))
                                    @if (!empty(json_decode($dataTypeContent->{$row->field})))
                                        @foreach(json_decode($dataTypeContent->{$row->field}) as $item)
                                            @if (@$row->details->options->{$item})
                                                {{ $row->details->options->{$item} . (!$loop->last ? ', ' : '') }}
                                            @endif
                                        @endforeach
                                    @else
                                        {{ __('voyager::generic.none') }}
                                    @endif
                                @endif
                            @elseif($row->type == 'date' || $row->type == 'timestamp')
                                @if ( property_exists($row->details, 'format') && !is_null($dataTypeContent->{$row->field}) )
                                    {{ \Carbon\Carbon::parse($dataTypeContent->{$row->field})->formatLocalized($row->details->format) }}
                                @else
                                    {{ $dataTypeContent->{$row->field} }}
                                @endif
                            @elseif($row->type == 'checkbox')
                                @if(property_exists($row->details, 'on') && property_exists($row->details, 'off'))
                                    @if($dataTypeContent->{$row->field})
                                    <span class="label label-info">{{ $row->details->on }}</span>
                                    @else
                                    <span class="label label-primary">{{ $row->details->off }}</span>
                                    @endif
                                @else
                                {{ $dataTypeContent->{$row->field} }}
                                @endif
                            @elseif($row->type == 'color')
                                <span class="badge badge-lg" style="background-color: {{ $dataTypeContent->{$row->field} }}">{{ $dataTypeContent->{$row->field} }}</span>
                            @elseif($row->type == 'coordinates')
                                @include('voyager::partials.coordinates')
                            @elseif($row->type == 'rich_text_box')
                                @include('voyager::multilingual.input-hidden-bread-read')
                                <p>{!! $dataTypeContent->{$row->field} !!}</p>
                            @elseif($row->type == 'file')
                                @if(json_decode($dataTypeContent->{$row->field}))
                                    @foreach(json_decode($dataTypeContent->{$row->field}) as $file)
                                        <a href="{{ Storage::disk(config('voyager.storage.disk'))->url($file->download_link) ?: '' }}">
                                            {{ $file->original_name ?: '' }}
                                        </a>
                                        <br/>
                                    @endforeach
                                @else
                                    <a href="{{ Storage::disk(config('voyager.storage.disk'))->url($row->field) ?: '' }}">
                                        {{ __('voyager::generic.download') }}
                                    </a>
                                @endif
                            @else
                                @include('voyager::multilingual.input-hidden-bread-read')
                                @if ($row->display_name == 'Total' || $row->display_name == 'Tax' || $row->display_name == 'Subtotal' || $row->display_name == 'Discount')
                                    <p>${{ format($dataTypeContent->{$row->field}) }}</p>
                                @else
                                    <p>{{ $dataTypeContent->{$row->field} }}</p>
                                @endif
                            @endif
                        </div><!-- panel-body -->
                        @if(!$loop->last)
                            <hr style="margin:0;">
                        @endif
                    @endforeach
                    
                </div>
                
            </div>
        </div>
        
    </div> --}}

     <!-- tracking section start -->
     <div class="page-body">
        <!-- tracking table start -->
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="bg-inner cart-section order-details-table">
                                <div class="row g-4">
                                    <div class="col-xl-3">
                                        <div class="order-success">
                                            <div class="row g-4">
                                                {{-- @dd($dataTypeContent); --}}
                                                <h3 style="padding: 10px;font-weight: 600;">Chi tiết thông tin khách hàng</h3>
                                                <h4 style="padding: 10px;">Họ tên: {{$dataTypeContent->billing_name}}</h4>
                                                <h4 style="padding: 10px;">Số điện thoại: {{$dataTypeContent->billing_phone}}</h4>
                                                <h4 style="padding: 10px;">Địa chỉ nhận hàng: {{$dataTypeContent->billing_address}}-{{$dataTypeContent->billing_city}}-{{$dataTypeContent->billing_province}}</h4>
                                                <h4 style="padding: 10px;">Trạng thái: @if($dataTypeContent->shipped == 1) Đã giao @else Chưa giao @endif</h4>
                                                <h4 style="padding: 10px;">Tổng hóa đơn:  {{ number_format($dataTypeContent->billing_total, 0) }}đ</h4>
                                                <div class="delivery-sec">
                                                    <h3>Ngày đặt: <span>{{$dataTypeContent->created_at}}</span>
                                                    </h3>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-8">
                                        <div class="table-responsive table-details">
                                            <table class="table cart-table table-borderless">
                                                <thead>
                                                    <tr>
                                                        <th >Sản phẩm</th>
                                                        <th >Hình ảnh</th>
                                                        <th >Số lượng</th>
                                                        <th >Đơn giá</th>
                                                    </tr>
                                                </thead>

                                                <tbody>
                                                    @foreach ($products as $product)
                                                        <tr class="table-order">
                                                            <th>{{ $product->name }}</th>
                                                            <th><img src="{{ productImage($product->image) }}" width="70" height="70"></th>
                                                            <td>{{ $product->pivot->quantity }}</td>
                                                            <th>{{ number_format($product->price, 0) }}đ</th>
                                                        </tr>
                                                    @endforeach
                                                </tbody>

                                                <tfoot>
                                                    <tr class="table-order">
                                                        <td colspan="3">
                                                            <h4 class="theme-color fw-bold">Tổng số tiền :</h4>
                                                        </td>
                                                        <td>
                                                            <h4 class="theme-color fw-bold"> {{ number_format($dataTypeContent->billing_total, 0) }}đ</h4>
                                                        </td>
                                                    </tr>
                                                </tfoot>
                                            </table>
                                        </div>
                                    </div>     
                                </div>
                            </div>
                            <!-- section end -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- tracking table end -->
    </div>
    <!-- tracking section End -->

    {{-- Single delete modal --}}
    <div class="modal modal-danger fade" tabindex="-1" id="delete_modal" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="{{ __('voyager::generic.close') }}"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title"><i class="voyager-trash"></i> {{ __('voyager::generic.delete_question') }} {{ strtolower($dataType->getTranslatedAttribute('display_name_singular')) }}?</h4>
                </div>
                <div class="modal-footer">
                    <form action="{{ route('voyager.'.$dataType->slug.'.index') }}" id="delete_form" method="POST">
                        {{ method_field('DELETE') }}
                        {{ csrf_field() }}
                        <input type="submit" class="btn btn-danger pull-right delete-confirm"
                            value="{{ __('voyager::generic.delete_confirm') }} {{ strtolower($dataType->getTranslatedAttribute('display_name_singular')) }}">
                    </form>
                    <button type="button" class="btn btn-default pull-right" data-dismiss="modal">{{ __('voyager::generic.cancel') }}</button>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
@stop

@section('javascript')
    @if ($isModelTranslatable)
        <script>
            $(document).ready(function () {
                $('.side-body').multilingual();
            });
        </script>
    @endif
    <script>
        var deleteFormAction;
        $('.delete').on('click', function (e) {
            var form = $('#delete_form')[0];

            if (!deleteFormAction) {
                // Save form action initial value
                deleteFormAction = form.action;
            }

            form.action = deleteFormAction.match(/\/[0-9]+$/)
                ? deleteFormAction.replace(/([0-9]+$)/, $(this).data('id'))
                : deleteFormAction + '/' + $(this).data('id');

            $('#delete_modal').modal('show');
        });

    </script>
@stop
