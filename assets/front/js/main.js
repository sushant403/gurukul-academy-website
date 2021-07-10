$(function() {
    
    "use strict";

    let main_url = $('#main_url').val();
    
    //===== Prealoder
    
    $(window).on('load', function(event) {
        $('.preloader').delay(500).fadeOut(500);

        if (mainbs.is_announcement == 1) {
            // trigger announcement banner base on sessionStorage
            let announcement = sessionStorage.getItem('announcement') != null ? false : true;
            // console.log(sessionStorage.getItem('announcement'));
            if (announcement) {
              setTimeout(function(){
                $('.announcement-banner').trigger('click');
              }, mainbs.announcement_delay*1000);
            }
          }   

    });
    
    
    //===== Sticky
    
    $(window).on('scroll', function(event) {    
        var scroll = $(window).scrollTop();
        if (scroll < 200) {
            $(".navigation").removeClass("sticky");
        } else{
            $(".navigation").addClass("sticky");
        }
    });

    
    //===== Mobile Menu 
    
    $(".navbar-toggler").on('click', function() {
        $(this).toggleClass('active');
    });
    
    $(".navbar-nav a").on('click', function() {
        $(".navbar-toggler").removeClass('active');
    });
    var subMenu = $(".sub-menu-bar .navbar-nav .sub-menu");

    if (subMenu.length) {
        subMenu.parent('li').children('a').append(function () {
            return '<button class="sub-nav-toggler"> <i class="fa fa-angle-down"></i> </button>';
        });

        var subMenuToggler = $(".sub-menu-bar .navbar-nav .sub-nav-toggler");

        subMenuToggler.on('click', function () {
            $(this).parent().parent().children(".sub-menu").slideToggle();
            return false
        });

    }

    // announcement banner magnific popup
    if (mainbs.is_announcement == 1) {
        $('.announcement-banner').magnificPopup({
            type: 'image',
            mainClass: 'mfp-fade',
            callbacks: {
            open: function() {
                $.magnificPopup.instance.close = function() {
                // Do whatever else you need to do here
                sessionStorage.setItem("announcement", "closed");
                // console.log(sessionStorage.getItem('announcement'));

                // Call the original close method to close the announcement
                $.magnificPopup.proto.close.call(this);
                };
            }
            }
        });
        }

    
    // // background video initialization for home 5
    if ($("#bgndVideo").length > 0) {
        $("#bgndVideo").YTPlayer();
    }

    //===== Isotope Project 1
    
    $('.container').imagesLoaded(function () {
        var $grid = $('.grid').isotope({
        // options
            transitionDuration: '1s'
        });
        
        // filter items on button click
        $('.project-menu ul').on( 'click', 'li', function() {
          var filterValue = $(this).attr('data-filter');
          $grid.isotope({ filter: filterValue });
        });
        
        //for menu active class
        $('.project-menu ul li').on('click', function (event) {
            $(this).siblings('.active').removeClass('active');
            $(this).addClass('active');
            event.preventDefault();
        });
    });



    //===== banner animation slick slider

    function mainSlider() {
        var BasicSlider = $('.banner-active');
        BasicSlider.on('init', function (e, slick) {
            var $firstAnimatingElements = $('.single-banner:first-child').find('[data-animation]');
            doAnimations($firstAnimatingElements);
        });
        BasicSlider.on('beforeChange', function (e, slick, currentSlide, nextSlide) {
            var $animatingElements = $('.single-banner[data-slick-index="' + nextSlide + '"]').find('[data-animation]');
            doAnimations($animatingElements);
        });
        BasicSlider.slick({
            autoplay: true,
            autoplaySpeed: 10000,
            dots: false,
            fade: true,
            arrows: true,
            prevArrow: '<span class="prev"><i class="fal fa-angle-left"></i></span>',
            nextArrow: '<span class="next"><i class="fal fa-angle-right"></i></span>',
            responsive: [
                {
                    breakpoint: 1330,
                    settings: {
                        arrows: false
                    }
                }
            ]
        });

        function doAnimations(elements) {
            var animationEndEvents = 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend';
            elements.each(function () {
                var $this = $(this);
                var $animationDelay = $this.data('delay');
                var $animationType = 'animated ' + $this.data('animation');
                $this.css({
                    'animation-delay': $animationDelay,
                    '-webkit-animation-delay': $animationDelay
                });
                $this.addClass($animationType).one(animationEndEvents, function () {
                    $this.removeClass($animationType);
                });
            });
        }
    }
    mainSlider();



    //===== portfolio slide slick slider
    $('.portfolio-active').slick({
        dots: false,
        infinite: true,
        autoplay: true,
        autoplaySpeed: 2000,
        arrows: true,
        prevArrow: '<span class="prev"><i class="fal fa-long-arrow-left"></i></span>',
        nextArrow: '<span class="next"><i class="fal fa-long-arrow-right"></i></span>',
        speed: 1000,
        slidesToShow: 3,
        slidesToScroll: 1,
        responsive: [
            {
                breakpoint: 1201,
                settings: {
                    slidesToShow: 3,
                }
        },
            {
                breakpoint: 992,
                settings: {
                    arrows: false,
                    slidesToShow: 2,
                }
        },
            {
                breakpoint: 768,
                settings: {
                    arrows: false,
                    slidesToShow: 1,
                }
        }
      ]
    });






    //===== portfolio slide slick slider
    $('.leadership-active').slick({
        dots: false,
        infinite: true,
        autoplay: true,
        autoplaySpeed: 2000,
        arrows: true,
        prevArrow: '<span class="prev"><i class="fal fa-long-arrow-left"></i></span>',
        nextArrow: '<span class="next"><i class="fal fa-long-arrow-right"></i></span>',
        speed: 1000,
        slidesToShow: 3,
        slidesToScroll: 1,
        responsive: [
            {
                breakpoint: 1201,
                settings: {
                    slidesToShow: 3,
                }
        },
            {
                breakpoint: 992,
                settings: {
                    arrows: false,
                    slidesToShow: 2,
                }
        },
            {
                breakpoint: 768,
                settings: {
                    arrows: false,
                    slidesToShow: 1,
                }
        }
      ]
    });



    //===== portfolio slide slick slider
    $('.brand-active').slick({
        dots: false,
        infinite: true,
        autoplay: true,
        autoplaySpeed:  1000,
        arrows: false,
        speed: 1000,
        slidesToShow: 5,
        slidesToScroll: 2,
        responsive: [
            {
                breakpoint: 1201,
                settings: {
                    slidesToShow: 5,
                }
        },
            {
                breakpoint: 992,
                settings: {
                    slidesToShow: 4,
                }
        },
            {
                breakpoint: 768,
                settings: {
                    slidesToShow: 3,
                }
        },
            {
                breakpoint: 576,
                settings: {
                    slidesToShow: 2,
                }
        }
      ]
    });


    //===== portfolio slide slick slider
    $('.portfolio-slider').slick({
        dots: false,
        infinite: true,
        autoplay: true,
        autoplaySpeed:  3000,
        arrows: true,
        prevArrow: '<span class="prev"><i class="fal fa-long-arrow-left"></i></span>',
        nextArrow: '<span class="next"><i class="fal fa-long-arrow-right"></i></span>',
        speed: 2000,
        slidesToShow: 1,
        slidesToScroll: 1
    });
    

    //===== portfolio slide slick slider
    $('.testimonail-active').slick({
        dots: false,
        infinite: true,
        autoplay: true,
        autoplaySpeed:  3000,
        arrows: true,
        prevArrow: '<span class="prev"><i class="fal fa-long-arrow-left"></i></span>',
        nextArrow: '<span class="next"><i class="fal fa-long-arrow-right"></i></span>',
        speed: 2000,
        slidesToShow: 2,
        slidesToScroll: 1,
        responsive: [
            {
                breakpoint: 1201,
                settings: {
                    slidesToShow: 2,
                }
        },
            {
                breakpoint: 992,
                settings: {
                    slidesToShow: 1,
                }
        },
            {
                breakpoint: 768,
                settings: {
                    slidesToShow: 1,
                }
        },
            {
                breakpoint: 576,
                settings: {
                    slidesToShow: 1,
                }
        }
      ]
    });
    



    //===== portfolio slide slick slider
    $('.case-studies-active').slick({
        dots: false,
        infinite: true,
        autoplay: true,
        autoplaySpeed:  3000,
        arrows: true,
        prevArrow: '<span class="prev"><i class="fal fa-angle-left"></i></span>',
        nextArrow: '<span class="next"><i class="fal fa-angle-right"></i></span>',
        speed: 1500,
        slidesToShow: 4,
        slidesToScroll: 1,
        responsive: [
            {
                breakpoint: 1201,
                settings: {
                    slidesToShow: 3,
                }
        },
            {
                breakpoint: 992,
                settings: {
                    slidesToShow: 3,
                }
        },
            {
                breakpoint: 768,
                settings: {
                    slidesToShow: 1,
                }
        },
            {
                breakpoint: 576,
                settings: {
                    slidesToShow: 1,
                }
        }
      ]
    });
    
    
    $('.shop-active').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: false,    
        fade: false,
        asNavFor: '.shop-thumb-active'
    });

    $('.shop-thumb-active').slick({
        slidesToShow: 3,
        slidesToScroll: 1,
        asNavFor: '.shop-active',
        dots: false,
        centerMode: true,
        arrows: false,
        centerPadding: "0",
        focusOnSelect: true
    });
    
    
    //====== Magnific Popup
    
    $('.video-popup').magnificPopup({
        type: 'iframe'
        // other options
    });
    
    
    //===== Magnific Popup
    
    $('.image-popup').magnificPopup({
      type: 'image',
      gallery:{
        enabled:true
      }
    });


    //===== counter up
    $('.counter').counterUp({
        delay: 10,
        time: 2000
    });

    
    
    //===== Back to top
    
    // Show or hide the sticky footer button
    $(window).on('scroll', function(event) {
        if($(this).scrollTop() > 600){
            $('.back-to-top').fadeIn(200)
        } else{
            $('.back-to-top').fadeOut(200)
        }
    });
    
    
    //Animate the scroll to yop
    $('.back-to-top').on('click', function(event) {
        event.preventDefault();
        
        $('html, body').animate({
            scrollTop: 0,
        }, 1500);
    });
    

    //===== product quantity

    $('.add').click(function () {
        if ($(this).prev().val()) {
            $(this).prev().val(+$(this).prev().val() + 1);
        }
    });

    $('.sub').click(function () {
        if ($(this).next().val() > 1) {
            if ($(this).next().val() > 1) $(this).next().val(+$(this).next().val() - 1);
        }
    });


    //===== Nice Select
    
    $('select').niceSelect();


    //===== Wow animation js
    
    new WOW().init();



    //===== Syotimer js
    $('#simple_timer').syotimer({
      year: 2020,
      month: 5,
      day: 9,
      hour: 20,
      minute: 30,
    });

    
    
});