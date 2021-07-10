<?php $__env->startSection('content'); ?>
<!-- Content Header (Page header) -->

<div class="content-header">
  <div class="container-fluid">
    <div class="row">
      <div class="col-sm-6">
        <h1 class="m-0 text-dark"><?php echo e(__('Welcome back,')); ?> <?php echo e(Auth::guard('admin')->user()->name); ?> !</h1>
      </div>
    </div><!-- /.row -->
  </div><!-- /.container-fluid -->
</div>
<!-- /.content-header -->

<!-- Main content -->
<div class="content">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-4 col-sm-6 col-12">
        <div class="info-box bg-gradient-primary">
          <span class="info-box-icon"><i class="fab fa-blogger-b"></i></span>

          <div class="info-box-content">
            <span class="info-box-text"><?php echo e(__('Blogs')); ?></span>
            <h4 class="info-box-number font-weight-normal"><?php echo e($currentLang->blogs()->count()); ?></h4>
          </div>
          <!-- /.info-box-content -->
        </div>
        <!-- /.info-box -->
      </div>
      <div class="col-md-4 col-sm-6 col-12">
        <div class="info-box bg-gradient-danger">
          <span class="info-box-icon"><i class="fas fa-star"></i></span>

          <div class="info-box-content">
            <span class="info-box-text"><?php echo e(__('Services')); ?></span>
            <h4 class="info-box-number font-weight-normal"><?php echo e($currentLang->services()->count()); ?></h4>
          </div>
          <!-- /.info-box-content -->
        </div>
        <!-- /.info-box -->
      </div>
      
      <div class="col-md-4 col-sm-6 col-12">
        <div class="info-box bg-gradient-success">
          <span class="info-box-icon"><i class="fas fa-box-open"></i></span>

          <div class="info-box-content">
            <span class="info-box-text"><?php echo e(__('Subscribers')); ?></span>
            <h4 class="info-box-number font-weight-normal"><?php echo e(\App\Models\Newsletter::count()); ?></h4>
          </div>
          <!-- /.info-box-content -->
        </div>
        <!-- /.info-box -->
      </div>
      <div class="col-md-4 col-sm-6 col-12">
        <div class="info-box bg-gradient-warning">
          <span class="info-box-icon"><i class="fas fa-briefcase"></i></span>

          <div class="info-box-content">
            <span class="info-box-text"><?php echo e(__('Admissions')); ?></span>
            <h4 class="info-box-number font-weight-normal"><?php echo e(\App\Models\Quote::count()); ?></h4>
          </div>
          <!-- /.info-box-content -->
        </div>
        <!-- /.info-box -->
      </div>
      <div class="col-md-4 col-sm-6 col-12">
        <div class="info-box bg-gradient-primary">
          <span class="info-box-icon"><i class="fas fa-code-branch"></i></span>

          <div class="info-box-content">
            <span class="info-box-text"><?php echo e(__('Events')); ?></span>
            <h4 class="info-box-number font-weight-normal"><?php echo e($currentLang->portfolios()->count()); ?></h4>
          </div>
          <!-- /.info-box-content -->
        </div>
        <!-- /.info-box -->
      </div>
    </div>
    <div class="row">
      <div class="col-md-12">
        <div class="card card-primary card-outline">
          <div class="card-header">
            <h3 class="card-title"><?php echo e(__('Latest Admission Requests:')); ?>

          </div>
          <!-- /.card-header -->
          <div class="card-body">
            <table id="idtable" class="table table-bordered table-striped data_table">
              <thead>
                <tr>
                  <th>#</th>
                  <th><?php echo e(__('Name')); ?></th>
                  <th><?php echo e(__('Subject')); ?></th>
                  <th><?php echo e(__('Mail')); ?></th>
                  <th><?php echo e(__('Action')); ?></th>
                </tr>
              </thead>
              <tbody>

                <?php $__currentLoopData = $quotes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $id=>$quote): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <tr>
                  <td><?php echo e(++$id); ?></td>
                  <td>
                    <?php echo e($quote->name); ?>

                  </td>
                  <td>
                    <?php echo e($quote->subject); ?>

                  </td>
                  <td>
                    <a href="mailto:<?php echo e($quote->email); ?>" class="btn btn-primary btn-sm"><i
                        class="fas fa-paper-plane"></i> <?php echo e(__('Send Mail')); ?></a>
                  </td>

                  <td>
                    <a class="btn btn-info btn-sm" href="<?php echo e(route('admin.quote.details', $quote->id)); ?>"><i
                        class="fas fa-eye"></i><?php echo e(__('Details')); ?></a>
                    <form id="deleteform" class="d-inline-block" action="<?php echo e(route('admin.quote.delete', $quote->id )); ?>"
                      method="post">
                      <?php echo csrf_field(); ?>
                      <button type="submit" class="btn btn-danger btn-sm" id="delete">
                        <i class="fas fa-trash"></i><?php echo e(__('Delete')); ?>

                      </button>
                    </form>
                  </td>
                </tr>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

              </tbody>
            </table>
          </div>
          <!-- /.card-body -->
        </div>
      </div>
      
</div>
<!-- Main row -->
</div>
<!-- /.container-fluid -->
</div>
<!-- /.content -->
<?php $__env->stopSection(); ?>
<?php echo $__env->make('admin.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\gurukul\core\resources\views/admin/dashboard.blade.php ENDPATH**/ ?>