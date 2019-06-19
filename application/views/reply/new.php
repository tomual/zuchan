<?php $this->load->view('header') ?>

<div class="row">
    <div class="col-lg-12">
        <div class="topic"><a href="<?php echo base_url("thread/view/{$thread->id}") ?>">Post Reply to "<?php echo $thread->title ?>"</a></div>
    </div>
</div>
<div class="row">
    <div class="col-lg-8">
        <?php alerts() ?>
        <?php if ($error ?? null): ?>
            <div class="alert alert-danger alert-dismissible fade show" role="alert"><?php echo $error ?><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button></div>
        <?php endif ?>
        Replying to <b><a href="<?php echo base_url("thread/view/{$thread->id}") ?>"><?php echo $thread->title ?></a></b>
        <form method="post" action="<?php echo base_url("reply/new/{$thread->id}") ?>">
            <div class="form-group">
                <label for="message">Message</label>
                <textarea name="message" id="message" class="form-control <?php echo is_valid('message') ?>" rows="6"><?php echo set_value('message') ?></textarea>
                <?php echo form_error('message') ?>
            </div>
            <div class="form-group">
                <input type="submit" value="Post" class="btn btn-primary">
            </div>
        </form>
    </div>
</div>
<?php $this->load->view('footer') ?>
