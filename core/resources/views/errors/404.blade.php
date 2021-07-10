@extends('front.layout')
@section('meta-keywords', "$setting->meta_keywords")
@section('meta-description', "$setting->meta_description")
@section('content')

{{-- <style>
    .page-title-area .page-title-item .title, .header-area.innar-page-menu .header-top .header-left-side ul li a, .header-area.innar-page-menu .header-top .header-right-social ul li a, .header-area.innar-page-menu .navigation .navbar .navbar-nav .nav-item a, .page-title-area .page-title-item nav .breadcrumb li a{color:#4f79a9;}
</style> --}}

<div class="page-title-area"
    style="background-image: url('{{ asset('assets/front/img/'.$setting->breadcrumb_image) }}')">
    <div class="overlay"></div>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="page-title-item text-center">
                    <h2 class="title">{{ __('Page Not Found') }}</h2>
                    <p class="pb-3 text-white">Sorry the page doesn't exist</p>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <ul>
                                <li><a class="main-btn" href="{{ url('/') }}">{{ __('Go to Homepage') }}</a></li>
                            </ul>
                        </ol>
                    </nav>
                </div> <!-- page title -->
            </div>
        </div> <!-- row -->
    </div> <!-- container -->
</div>

@endsection