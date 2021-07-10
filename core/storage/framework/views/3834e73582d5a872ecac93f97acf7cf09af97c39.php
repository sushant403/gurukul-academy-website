


<?php $__env->startSection('meta-keywords', "$setting->meta_keywords"); ?>
<?php $__env->startSection('meta-description', "$setting->meta_description"); ?>
<?php $__env->startSection('content'); ?>

 <!--====== PAGE TITLE PART START ======-->
         
 <div class="page-title-area" style="background-image: url('<?php echo e(asset('assets/front/img/'.$setting->breadcrumb_image)); ?>')">
	<div class="overlay"></div>
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="page-title-item text-center">
					<h2 class="title"><?php echo e(__('Portfolio')); ?></h2>
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="<?php echo e(route('front.index')); ?>"><?php echo e(__('Home')); ?> </a></li>
							<li class="breadcrumb-item active" aria-current="page"><?php echo e(__('Portfolio')); ?></li>
						</ol>
					</nav>
				</div> <!-- page title -->
			</div>
		</div> <!-- row -->
	</div> <!-- container -->
</div> 

<!--====== PAGE TITLE PART ENDS ======-->

<!--====== NEWS PART START ======-->
                   
 <div class="blog-grid-area portfolio-page pt-90 pb-120">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="row">
                    <?php $__currentLoopData = $portfolios; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <div class="col-lg-6">
                        <a href="<?php echo e(route('front.portfolio.details', $item->slug)); ?>" class="blog-grid-item mb-30">
                            <div class="img" style="background-image: url(<?php echo e(asset('assets/front/img/portfolio/'.$item->featured_image)); ?>)"></div>
                            <div class="blog-grid-overlay">
                                <div>
                                    <span><?php echo e($item->service->title); ?></span>
                                </div>
                                <h5 class="title"><?php echo e($item->title); ?></h5>
                            </div>
                        </a>
                    </div>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </div>
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <div class="d-inline-block"> <?php echo e($portfolios->links()); ?></div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 order-first order-lg-last">
                <div class="blog-sidebar-item">
                    <div class="sidebar-title">
                        <h4 class="title"><?php echo e(__('All Categories')); ?></h4>
                    </div>
                    <div class="sidebar-categories mt-35">
                        <ul>
                            <li >
                                <a href="<?php echo e(route('front.portfolio')); ?>" class="<?php if(empty(request()->input('category'))): ?> active <?php endif; ?>"><?php echo e(__('All')); ?></a>
                            </li>
                          <?php $__currentLoopData = $all_services; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <li><a href="<?php echo e(route('front.portfolio',['category'=>$item->slug])); ?>" class=" 
                                <?php if(request()->input('category') == $item->slug): ?> active <?php endif; ?>
                                "><?php echo e($item->title); ?></a></li>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </ul>
                    </div>
                  </div>
                  <div class="blog-sidebar-item mt-30">
                    <div class="sidebar-title">
                        <h4 class="title"><?php echo e(__('Never Miss News')); ?></h4>
                    </div>
                    <div class="sidebar-social text-center mt-35">
                        <ul>
                          <?php $__currentLoopData = $socials; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                          <li><a href="<?php echo e($item->url); ?>"><i class="<?php echo e($item->icon); ?>"></i></a></li>
                          <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </ul>
                    </div>
                  </div>
                  <div class="side-bar-contact mt-30" style="background-image: url(<?php echo e(asset('assets/front/img/'.$sinfo->contact_form_image)); ?>);">
                      <div class="overlay"></div>
                      <div class="content">
                        <h3><?php echo e(__('Make a call for any type query.')); ?></h3>
                          <i class="fas fa-headset"></i>
                      <h4 class="call">
                        <?php
                        $fnumber = explode( ',', $commonsetting->number );
                        for ($i=0; $i < count($fnumber); $i++) { 
                            echo '<a class="d-block" href="tel:'.$fnumber[$i].'">'.$fnumber[$i].'</a>';
                        }
                        ?>
                      </h4>
                      </div>
                  </div>
            </div>
        </div>
    </div>
</div> 

<!--====== NEWS PART ENDS ======-->

<?php $__env->stopSection(); ?>

<?php echo $__env->make('front.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\gurukul\core\resources\views/front/portfolio.blade.php ENDPATH**/ ?>