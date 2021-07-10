
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
					<h2 class="title"><?php echo e(__('Contact')); ?></h2>
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="<?php echo e(route('front.index')); ?>"><?php echo e(__('Home')); ?> </a></li>
							<li class="breadcrumb-item active" aria-current="page"><?php echo e(__('Contact')); ?></li>
						</ol>
					</nav>
				</div> <!-- page title -->
			</div>
		</div> <!-- row -->
	</div> <!-- container -->
</div> 

<!--====== PAGE TITLE PART ENDS ======-->

 <!--====== CONTACT DETAILS PART START ======-->
         
 <div class="contact-details-area pt-120 pb-120">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 align-self-center">
				<div class="contact-info">
					<div class="contact-item-1">
						<div class="contact-info-item text-center">
							<i class="fal fa-phone"></i>
							<h5 class="title"><?php echo e(__('Phone Number')); ?></h5>
								<?php
                                    $fnumber = explode( ',', $commonsetting->number );
                                    for ($i=0; $i < count($fnumber); $i++) { 
                                        echo '<p>'.$fnumber[$i].'</p>';
                                    }
                                ?>
						</div>
						<div class="contact-info-item text-center">
							<i class="fal fa-envelope"></i>
							<h5 class="title"><?php echo e(__('Email Address')); ?></h5>
							<?php
								$femail = explode( ',', $commonsetting->email );
								for ($i=0; $i < count($femail); $i++) { 
									echo '<p>'.$femail[$i].'</p>';
								}
							?>
						</div>
					</div>
					<div class="contact-item-1">
						<div class="contact-info-item text-center">
							<i class="fal fa-map"></i>
							<h5 class="title"><?php echo e(__('Office Location')); ?></h5>
							<p><?php echo e($commonsetting->address); ?></p>
						</div>
						<div class="contact-info-item text-center">
							<i class="fal fa-globe"></i>
							<h5 class="title"><?php echo e(__('Opening Hours')); ?></h5>
							<p><?php echo e($commonsetting->opening_hours); ?></p>
						</div>
					</div>
				</div> <!-- contact info -->
			</div>
			<div class="col-lg-6  align-self-center">
				<div class="map-area">
					<?php echo $sinfo->contact_map; ?>

				</div> <!-- map area -->
			</div>
		</div> <!-- row -->
	</div> <!-- container -->
</div> 

<!--====== CONTACT DETAILS PART ENDS ======-->

<!--====== GET IN TOUCH PART START ======-->
<div class="contact-us-area bg_cover" style="background-image: url(<?php echo e(asset('assets/front/img/'.$sinfo->contact_section_bg_image)); ?>">
	<div class="contact-overlay">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-6">
					<div class="section-title text-center">
						<h2 class="title"><?php echo e($sinfo->contact_title); ?></h2>
					</div> <!-- sevtion title -->
				</div>
			</div> <!-- row -->
		</div> <!-- container -->
		<div class="container  pb-50">
			<div class="row">
				<div class="col-lg-12">
					<div class="contact-details d-flex">
						<div class="contact-thumb wow slideInLeft" data-wow-duration=".5s" data-wow-delay="0s">
							<img src="<?php echo e(asset('assets/front/img/'.$sinfo->contact_form_image)); ?>" alt="">
						</div>
						<div class="contact-form-area">
							<form action="<?php echo e(route('front.contact.submit')); ?>" method="POST">
								<?php echo csrf_field(); ?>
								<div class="input-title">
									<h3 class="title"><?php echo e($sinfo->contact_form_title); ?></h3>
								</div> <!-- input title -->
								<div class="row">
									<div class="col-lg-6">
										<div class="input-box mt-30">
											<input type="text" placeholder="<?php echo e(__('Full Name Here')); ?>" name="name">
											<i class="fal fa-user"></i>
										</div> <!-- input box -->
										<?php if($errors->has('name')): ?>
											<p class="text-danger"> <?php echo e($errors->first('name')); ?> </p>
										<?php endif; ?>
									</div>
									<div class="col-lg-6">
										<div class="input-box mt-30">
											<input type="email" placeholder="<?php echo e(__('Email Here')); ?>" name="email">
											<i class="fal fa-envelope-open"></i>
										</div> <!-- input box -->
										<?php if($errors->has('email')): ?>
											<p class="text-danger"> <?php echo e($errors->first('email')); ?> </p>
										<?php endif; ?>
									</div>
									<div class="col-lg-6">
										<div class="input-box mt-30">
											<input type="text" placeholder="<?php echo e(__('Phone No')); ?>" name="phone">
											<i class="fal fa-phone"></i>
										</div> <!-- input box -->
										<?php if($errors->has('phone')): ?>
											<p class="text-danger"> <?php echo e($errors->first('phone')); ?> </p>
										<?php endif; ?>
									</div>
									<div class="col-lg-6">
										<div class="input-box mt-30">
											<input type="text" placeholder="<?php echo e(__('Subject')); ?>" name="subject">
											<i class="fal fa-edit"></i>
											<?php if($errors->has('subject')): ?>
											<p class="text-danger"> <?php echo e($errors->first('subject')); ?> </p>
										<?php endif; ?>
										</div> <!-- input box -->
									</div>
									<div class="col-lg-12">
										<div class="input-box mt-30">
											<textarea name="message" id="#" cols="30" rows="10" placeholder="<?php echo e(__('Message Us')); ?>"></textarea>
											<i class="fal fa-pencil"></i>
											<?php if($errors->has('message')): ?>
											<p class="text-danger"> <?php echo e($errors->first('message')); ?> </p>
											<?php endif; ?>
										</div> <!-- input box -->
									</div>
									<div class="col-lg-12">
										<div class="input-box ">
										
											<div class="contact-btn-captcha-wrapper">
												
												<button class="main-btn wow slideInUp d-inline-block" data-wow-duration="1.5s" data-wow-delay="0s" type="submit"><?php echo e(__('Send Message')); ?>

												<i class="fal fa-long-arrow-right"></i></button>
												<?php if($commonsetting->is_recaptcha == 1): ?>
													<div class="mt-3 d-inline-block ml-4" >
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
											</div>
										</div> <!-- input box -->
									</div>
								</div>
							</form>
						</div>
					</div> <!-- contact details -->
				</div>
			</div> <!-- row -->
		</div> <!-- container -->
	</div>
</div>

<!--====== GET IN TOUCH PART ENDS ======-->

<?php $__env->stopSection(); ?>

<?php echo $__env->make('front.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\gurukul\core\resources\views/front/contact.blade.php ENDPATH**/ ?>