

<?php $__env->startSection('content'); ?>

<div class="content-header">
    <div class="container-fluid">
        <div class="row">
        <div class="col-sm-6">
            <h1 class="m-0 text-dark"><?php echo e(__('Quote')); ?></h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="<?php echo e(route('admin.dashboard')); ?>"><i class="fas fa-home"></i><?php echo e(__('Home')); ?></a></li>
            <li class="breadcrumb-item"><?php echo e(__('Quote')); ?></li>
            </ol>
        </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.container-fluid -->
</div>

<section class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card card-primary card-outline">
                    <div class="card-header">
                    <h3 class="card-title"><?php echo e(__('Quote List:')); ?>

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
                                <th><?php echo e(__('Status')); ?></th>
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
                                    <a href="mailto:<?php echo e($quote->email); ?>" class="btn btn-primary btn-sm"><i class="fas fa-paper-plane"></i> <?php echo e(__('Send Mail')); ?></a>
                                </td> 
                                <td>
                                    <form id="statusForm<?php echo e($quote->id); ?>" class="d-inline-block" action="<?php echo e(route('admin.quote.status')); ?>" method="post">
                                        <?php echo csrf_field(); ?>
                                        <input type="hidden" name="quote_id" value="<?php echo e($quote->id); ?>">
                                        <select class="form-control form-control-sm
                                        <?php if($quote->status == 0): ?>
                                        bg-warning
                                        <?php elseif($quote->status == 1): ?>
                                        bg-primary
                                        <?php elseif($quote->status == 2): ?>
                                        bg-success
                                        <?php elseif($quote->status == 3): ?>
                                        bg-danger
                                        <?php endif; ?>
                                        " name="status" onchange="document.getElementById('statusForm<?php echo e($quote->id); ?>').submit();">
                                        <option value="0" <?php echo e($quote->status == 0 ? 'selected' : ''); ?>><?php echo e(__('Pending')); ?></option>
                                        <option value="1" <?php echo e($quote->status == 1 ? 'selected' : ''); ?>><?php echo e(__('Processing')); ?></option>
                                        <option value="2" <?php echo e($quote->status == 2 ? 'selected' : ''); ?>><?php echo e(__('Completed')); ?></option>
                                        <option value="3" <?php echo e($quote->status == 3 ? 'selected' : ''); ?>><?php echo e(__('Rejected')); ?></option>
                                        </select>
                                    </form>  
                                </td>
                                <td>
                                    <a class="btn btn-info btn-sm" href="<?php echo e(route('admin.quote.details', $quote->id)); ?>" ><i class="fas fa-eye"></i><?php echo e(__('Details')); ?></a>
                                    <form  id="deleteform" class="d-inline-block" action="<?php echo e(route('admin.quote.delete', $quote->id )); ?>" method="post">
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
    </div>
    <!-- /.row -->

</section>
<?php $__env->stopSection(); ?>


<?php echo $__env->make('admin.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\gurukul\core\resources\views/admin/quote/quote.blade.php ENDPATH**/ ?>