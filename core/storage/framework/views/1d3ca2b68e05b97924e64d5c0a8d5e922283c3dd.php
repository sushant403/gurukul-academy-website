
<?php $__env->startSection('meta-keywords', "$setting->meta_keywords"); ?>
<?php $__env->startSection('meta-description', "$setting->meta_description"); ?>
<?php $__env->startSection('content'); ?>



<div class="page-title-area"
    style="background-image: url('<?php echo e(asset('assets/front/img/'.$setting->breadcrumb_image)); ?>')">
    <div class="overlay"></div>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="page-title-item text-center">
                    <h2 class="title"><?php echo e(__('Page Not Found')); ?></h2>
                    <p class="pb-3 text-white">Sorry the page doesn't exist</p>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <ul>
                                <li><a class="main-btn" href="<?php echo e(url('/')); ?>"><?php echo e(__('Go to Homepage')); ?></a></li>
                            </ul>
                        </ol>
                    </nav>
                </div> <!-- page title -->
            </div>
        </div> <!-- row -->
    </div> <!-- container -->
</div>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('front.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\gurukul\core\resources\views/errors/404.blade.php ENDPATH**/ ?>