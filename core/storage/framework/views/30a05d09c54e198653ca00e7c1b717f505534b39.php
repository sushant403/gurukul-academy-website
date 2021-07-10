
<?php $__env->startSection('meta-keywords', "$setting->meta_keywords"); ?>
<?php $__env->startSection('meta-description', "$setting->meta_description"); ?>
<?php $__env->startSection('content'); ?>

<!--====== BANNER PART START ======-->
<?php if($commonsetting->is_t4_hero_section == 1): ?>
    <?php if($commonsetting->is_video_hero == 1): ?>
        <div id="herovideo" class="banner-area-2 bg_cover mt-0 video-section" style="background-image: url(<?php echo e(asset('assets/front/img/'.$sinfo->hero_bg_image )); ?>);">
            <div id="bgndVideo" data-property="{videoURL:'<?php echo e($commonsetting->hero_section_video_link); ?>',containment:'#herovideo', quality:'large', autoPlay:true, loop:true, mute:true, opacity:1}"></div>
            <div class="banner-overlay">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-9">
                            <div class="banner-content">
                                <span><?php echo e($sinfo->hero_sub_title); ?></span>
                                <h1 class="title"><?php echo e($sinfo->hero_title); ?></h1>
                                <p><?php echo e($sinfo->hero_text); ?></p>
                                <ul>
                                    <li><a class="main-btn wow fadeInUp" href="<?php echo e(route('front.quot')); ?>" data-wow-duration=".3s" data-wow-delay=".5s"><?php echo e(__('Admission Apply')); ?></a></li>
                                    <li><a class="main-btn main-btn-2 wow fadeInUp" href="<?php echo e(route('front.about')); ?>" data-wow-duration=".7s" data-wow-delay=".7s"><?php echo e(__('Learn More')); ?></a></li>
                                </ul>
                            </div> <!-- banner content -->
                        </div>
                    </div> <!-- row -->
                </div> <!-- container -->
            </div>
        </div>
    <?php else: ?>
        <div class="banner-area-3 bg_cover" style="background-image: url(<?php echo e(asset('assets/front/img/'.$sinfo->hero_bg_image )); ?>);">
            <div class="banner-overlay">
                <img class="item-1" src="<?php echo e(asset('assets/front/')); ?>/images/banner-shape-1.png" alt="">
                <img class="item-2" src="<?php echo e(asset('assets/front/')); ?>/images/banner-shape-2.png" alt="">
                <div class="container">
                    <div class="row align-items-center justify-content-center">
                        <div class="col-lg-9">
                            <div class="banner-content mt-100 text-center">
                                <span><?php echo e($sinfo->hero_sub_title); ?></span>
                                <h1 class="title"><?php echo e($sinfo->hero_title); ?></h1>
                                <p><?php echo e($sinfo->hero_text); ?></p>
                                <ul>
                                    <li><a class="main-btn wow fadeInUp" href="<?php echo e(route('front.quot')); ?>" data-wow-duration=".3s" data-wow-delay=".5s"><?php echo e(__('Gate A Quote')); ?></a></li>
                                    <li><a class="main-btn main-btn-2 wow fadeInUp" href="<?php echo e(route('front.about')); ?>" data-wow-duration=".7s" data-wow-delay=".7s"><?php echo e(__('Learn More')); ?></a></li>
                                </ul>
                            </div> <!-- banner content -->
                        </div>
                    </div> <!-- row -->
                </div> <!-- container -->
            </div>
        </div>
    <?php endif; ?>
<?php endif; ?>
<!--====== BANNER PART ENDS ======-->

<?php if($commonsetting->is_t4_client_section == 1): ?>
<div class="brand-2-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="brand-active">
                    <?php $__currentLoopData = $clients; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <a href="<?php echo e($item->link); ?>" class="brand-item">
                        <img src="<?php echo e(asset('assets/front/img/client/'.$item->image)); ?>" alt="<?php echo e($item->name); ?>">
                    </a> 
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </div> <!-- brand item -->
            </div>
        </div> <!-- row -->
    </div> <!-- container -->
</div>
<?php endif; ?>

<!--====== FEATURES PART START ======-->
<?php if($commonsetting->is_t4_about_section == 1): ?>
<div class="features-area pt-120 pb-120">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="features-item">
                    <div class="image">
                        <img class="" src="<?php echo e(asset('assets/front/img/'.$sinfo->about_image)); ?>" alt="">
                    </div>
                    <div class="content">
                        <strong><?php echo e($sinfo->about_sub_title); ?></strong>
                        <h2 class="title"><?php echo e($sinfo->about_title); ?></h2>
                        <p><?php echo (strlen(strip_tags(Helper::convertUtf8($sinfo->about_text))) > 280) ? substr(strip_tags(Helper::convertUtf8($sinfo->about_text)), 0, 280) . '...' : strip_tags(Helper::convertUtf8($sinfo->about_text)); ?></p>
                        <div class="about-experience">
                            <h3><?php echo e($sinfo->about_experince_yers); ?></h3>
                            <span><?php echo e(__('Years Of Experience')); ?></span>
                        </div>
                        <ul>
                            <li><a class="main-btn wow fadeInUp" href="<?php echo e(route('front.about')); ?>" data-wow-duration=".5s" data-wow-delay=".4s"><?php echo e(__('Learn More')); ?></a></li>
                            <li><a class="video-popup main-btn main-btn-2 wow fadeInUp" href="<?php echo e($sinfo->about_intro_video); ?>" data-wow-duration="1s" data-wow-delay=".6s"> <i class="fal fa-video"></i><?php echo e(__('About Video')); ?></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <?php if($setting->is_t4_feature_section == 1): ?>
        <div class="row">
            <?php $__currentLoopData = $features; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <div class="col-lg-3 col-md-6 col-sm-6 wow slideInUp" data-wow-duration=".5s" data-wow-delay="0s">
                <div class="what-we-do-item text-center mt-30">
                    <i class="<?php echo e($item->icon); ?>"></i>
                    <h5 class="title"><?php echo e($item->title); ?></h5>
                    <p><?php echo e($item->text); ?></p>
                </div> <!-- what we do item -->
            </div> 
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div> <!-- row -->
        <?php endif; ?>
    </div>
</div> 
<?php endif; ?>
<!--====== FEATURES PART ENDS ======-->

<!--====== CHOOSE PART START ======-->
<?php if($commonsetting->is_t4_who_we_are_section == 1): ?>
<div class="choose-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="section-title">
                    <span><?php echo e($sinfo->w_c_us_sub_title); ?></span>
                    <h3 class="title"><?php echo e($sinfo->w_c_us_title); ?></h3>
                </div>
                <div class="choose-cat">
                    <?php $__currentLoopData = $why_selects; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <div class="choose-cat-item mt-40 wow fadeInLeft" data-wow-duration=".5s" data-wow-delay=".4s">
                        <h4 class="title"><?php echo e($item->title); ?></h4>
                        <p><?php echo e($item->text); ?></p>
                        <i class="<?php echo e($item->icon); ?>"></i>
                    </div>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="choose-thumb-area mt-30">
                    <div class="choose-thumb-1">
                        <img class="item-1" src="<?php echo e(asset('assets/front/img/'.$sinfo->w_c_us_image1 )); ?>" alt="">
                    </div>
                    <div class="choose-thumb-2">
                        <img class="item-2" src="<?php echo e(asset('assets/front/img/'.$sinfo->w_c_us_image2 )); ?>" alt="">
                    </div>
                </div>
            </div>
        </div>
        <?php if($setting->is_t4_intro_video_section == 1): ?>
        <div class="row">
            <div class="col-lg-12">
                <div class="choose-video-thumb mt-115">
                    <img src="<?php echo e(asset('assets/front/img/'.$sinfo->video_bg_image )); ?>" alt="">
                    <a class="video-popup" href="<?php echo e($sinfo->video_link); ?>"><i class="fal fa-play"></i></a>
                </div>
            </div>
        </div>
        <?php endif; ?>
    </div>
</div> 
<?php endif; ?>
<!--====== CHOOSE PART ENDS ======-->

<!--====== PORTFOLIO 3 PART START ======-->
<?php if($commonsetting->is_t4_portfolio_section == 1): ?>  
<div class="portfolio-3-area pt-115 pb-120">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="section-title text-center">
                    <span><?php echo e($sinfo->portfolio_sub_title); ?></span>
                    <h2 class="title"><?php echo e($sinfo->portfolio_title); ?></h2>
                </div>
            </div>
        </div>
        <div class="row justify-content-center">
            <?php $__currentLoopData = $portfolios; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <div class="col-lg-4 col-md-6 col-sm-9 wow fadeInUp" data-wow-duration="1s" data-wow-delay=".2s">
                <div class="single-portfolio mt-30">
                    <div class="portfolio-thumb">
                        <img src="<?php echo e(asset('assets/front/img/portfolio/'.$item->featured_image)); ?>" alt="">
                    </div>
                    <div class="portfolio-content">
                        <span><?php echo e($item->service->title); ?></span>
                        <a href="<?php echo e(route('front.portfolio.details', $item->slug)); ?>"><h4 class="title">
                            <?php echo e((strlen(strip_tags(Helper::convertUtf8($item->title))) > 40) ? substr(strip_tags(Helper::convertUtf8($item->title)), 0, 40) . '...' : strip_tags(Helper::convertUtf8($item->title))); ?>

                            </h4></a>
                        <p>T<?php echo e((strlen(strip_tags(Helper::convertUtf8($item->content))) > 120) ? substr(strip_tags(Helper::convertUtf8($item->content)), 0, 120) . '...' : strip_tags(Helper::convertUtf8($item->content))); ?></p>
                    </div>
                </div>
            </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div>
    </div>
</div> 
<?php endif; ?>
<!--====== PORTFOLIO 3 PART ENDS ======-->

<!--====== COUNTER PART START ======-->
<?php if($commonsetting->is_t4_counter_section == 1): ?>  
<div class="counter-area bg_cover pt-80 pb-115" style="background-image: url(<?php echo e(asset('assets/front/')); ?>/images/video-bg.jpg);">
    <div class="container">
        <div class="row">
            <?php $__currentLoopData = $counters; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="counter-item mt-30">
                    <h3 class="title"><span class="counter"><?php echo e($item->number); ?></span>+</h3>
                    <p><?php echo e($item->title); ?></p>
                    <i class="<?php echo e($item->icon); ?>"></i>
                </div>
            </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div>
    </div>
</div> 
<?php endif; ?>
<!--====== COUNTER PART ENDS ======-->

<!--====== TESTIMONIAL PART START ======-->
<?php if($commonsetting->is_t4_testmonial_section == 1): ?>  
<div class="testimonial-area gray-bg"  style="background-image: url(<?php echo e(asset('assets/front/images/map.png')); ?>">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-6">
                <div class="section-title text-center">
                    <span><?php echo e($sinfo->testimonial_subtitle); ?></span>
                    <h2 class="title"><?php echo e($sinfo->testimonial_title); ?></h2>
                </div>
            </div>
        </div> <!-- row -->
    </div> <!-- container -->
    <div class="container">
        <div class="row no-gutters testimonail-active">
            <?php $__currentLoopData = $testimonials; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <div class="col-md-6">
                <div class="single-testimonial">
                    <img src="<?php echo e(asset('assets/front/img/'.$item->image)); ?>" alt="case-studies">
                    <div class="t-content">
                        <div class="star">
                            <?php for($i = 0; $i < $item->rating; $i++): ?>
                                <i class="fas fa-star"></i>
                            <?php endfor; ?>
                        </div>
                        <p>
                        <?php echo e($item->message); ?>

                    </p>
                    <h4 class="name">
                        <?php echo e($item->name); ?>

                    </h4>
                    <span class="designation"><?php echo e($item->position); ?></span>
                    </div>
                    
                </div> <!-- single case studies -->
            </div>  
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div> <!-- row -->
    </div> <!-- container fluid -->
</div>
<?php endif; ?>
<!--====== TESTIMONIAL PART ENDS ======-->
    
<!--====== FAQ PART START ======-->
<?php if($commonsetting->is_t4_faq_section == 1): ?>  
<div class="faq-area faq-area-3 pt-115">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 order-2 order-lg-1 d-none d-sm-block">
                <div class="faq-thumb">
                    <div class="faq-thumb-1 text-right">
                        <img src="<?php echo e(asset('assets/front/img/'.$sinfo->faq_image2)); ?>" alt="">
                    </div>
                    <div class="faq-thumb-2">
                        <img src="<?php echo e(asset('assets/front/img/'.$sinfo->faq_image1)); ?>" alt="">
                    </div>
                </div> <!-- faq thumb -->
            </div>
            <div class="col-lg-6 order-1 order-lg-2">
                <div class="section-title text-left">
                    <span><?php echo e($sinfo->faq_sub_title); ?></span>
                    <h2 class="title"><?php echo e($sinfo->faq_title); ?></h2>
                </div> <!-- section title -->
                <div class="faq-accordion">
                    <div class="accordion" id="accordionExample">
                        <?php $__currentLoopData = $faqs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <div class="card">
                            <div class="card-header" id="heading<?php echo e($item->id); ?>">
                                <a class="<?php echo e($loop->first ? '' : 'collapsed'); ?>" href="" data-toggle="collapse" data-target="#collapse<?php echo e($item->id); ?>" aria-expanded="<?php echo e($loop->first ? 'true' : 'false'); ?>" aria-controls="collapse<?php echo e($item->id); ?>">
                                    <?php echo e($item->title); ?>

                                </a>
                            </div>

                            <div id="collapse<?php echo e($item->id); ?>" class="collapse  <?php echo e($loop->first ? 'show' : ''); ?>" aria-labelledby="heading<?php echo e($item->id); ?>" data-parent="#accordionExample">
                                <div class="card-body">
                                    <p><?php echo $item->content; ?></p>
                                </div>
                            </div>
                        </div>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </div>
                </div> <!-- faq accordion -->
            </div>
        </div> <!-- row -->
    </div> <!-- container -->
</div>
<?php endif; ?>
<!--====== FAQ PART ENDS ======-->

<!--====== GET IN TOUCH PART START ======-->
<?php if($commonsetting->is_t4_contact_section == 1): ?>   
<div class="get-in-touch-area">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="section-title text-center">
                    <span><?php echo e($sinfo->contact_sub_title); ?></span>
                    <h2 class="title"><?php echo e($sinfo->contact_title); ?></h2>
                </div> <!-- section title -->
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <div class="form-area">
                    <form action="<?php echo e(route('front.contact.submit')); ?>" method="POST">
                        <?php echo csrf_field(); ?>
                        <div class="input-box wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".2s">
                            <input type="text" placeholder="<?php echo e(__('Full Name Here')); ?>" name="name">
                        </div>
                        <div class="input-box mt-20 wow fadeInLeft" data-wow-duration="1.2s" data-wow-delay=".4s">
                            <input type="email" placeholder="<?php echo e(__('Email Here')); ?>" name="email">
                        </div>
                        <div class="input-box mt-20 wow fadeInLeft" data-wow-duration="1.2s" data-wow-delay=".4s">
                            <input type="text" placeholder="<?php echo e(__('Phone No')); ?>" name="phone">
                        </div>
                        <div class="input-box mt-20 wow fadeInLeft" data-wow-duration="1.2s" data-wow-delay=".4s">
                            <input type="text" placeholder="<?php echo e(__('Subject')); ?>" name="subject">
                        </div>
                        <div class="input-box mt-20 wow fadeInLeft" data-wow-duration="1.4s" data-wow-delay=".6s">
                            <textarea name="message" id="#" cols="30" rows="10" placeholder="<?php echo e(__('Message Us')); ?>"></textarea>
                        </div>
                        <div class="input-box mt-20">
                            <?php if($commonsetting->is_recaptcha == 1): ?>
                            <div class="">
                              <?php echo NoCaptcha::renderJs(); ?>

                              <?php echo NoCaptcha::display(); ?>

                              <?php if($errors->has('g-recaptcha-response')): ?>
                                <?php
                                    $errmsg = $errors->first('g-recaptcha-response');
                                ?>
                                <p class="text-danger mb-0"><?php echo e(__("$errmsg")); ?></p>
                              <?php endif; ?>
                            </div>
                        <?php endif; ?>
                            <button class="main-btn wow fadeInUp" data-wow-duration="1.6s" data-wow-delay=".2s" type="submit"><?php echo e(__('Send Message')); ?></button>
                        </div>
                    </form>
                </div>
            </div>
            
            <div class="col-lg-6">
                <div class="get-map d-none d-lg-block">
                    <?php echo $sinfo->contact_map; ?>

                </div>
            </div>
        </div>
    </div>
</div> 
<?php endif; ?>
<!--====== GET IN TOUCH PART ENDS ======-->

<?php $__env->stopSection(); ?>
<?php echo $__env->make('front.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\gurukul\core\resources\views/front/themes/theme4.blade.php ENDPATH**/ ?>