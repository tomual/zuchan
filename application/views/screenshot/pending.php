<?php $this->load->view('header') ?>

<div class="row">
    <div class="col-lg-12">
        <div class="topic"><a href="">Pending Screenshot</a></div>
    </div>
</div>

<?php if ($screenshot): ?>
<form method="post" action="<?php echo base_url("screenshot/pending/{$screenshot->id}") ?>">
    <div class="row">
        <div class="col-lg-8">
            <?php alerts() ?>
            <img src="<?php echo base_url("img/screenshots/pending/{$screenshot->file}") ?>">
            <div class="form-group">
                <label for="type">Type</label>
                <div class="form-check">
                    <input class="form-check-input <?php echo is_valid('category') ?>" type="radio" value="art" id="category-art" name="category" <?php echo set_radio('category', 'art', $screenshot->category == 'art') ?>>
                    <label class="form-check-label" for="category-art">Art</label>
                </div>
                <div class="form-check">
                    <input class="form-check-input <?php echo is_valid('category') ?>" type="radio" value="meme" id="category-meme" name="category" <?php echo set_radio('category', 'meme', $screenshot->category == 'meme') ?>>
                    <label class="form-check-label" for="category-meme">Meme</label>
                </div>
                <div class="form-check">
                    <input class="form-check-input <?php echo is_valid('category') ?>" type="radio" value="screenshot" id="category-screenshot" name="category" <?php echo set_radio('category', 'screenshot', $screenshot->category == 'screenshot') ?>>
                    <label class="form-check-label" for="category-screenshot">Screenshot</label>
                    <?php echo form_error('category') ?>
                </div>
            </div>
            <div class="form-group">
                <label for="title">Post Title</label>
                <input type="text" name="title" id="title" value="<?php echo set_value('title', $screenshot->title) ?>" class="form-control <?php echo is_valid('title') ?>">
                <?php echo form_error('title') ?>
            </div>
            <div class="form-group">
                <label for="message">Post Message</label>
                <textarea name="message" id="message" class="form-control <?php echo is_valid('message') ?>" rows="6"><?php echo set_value('message', $screenshot->message) ?></textarea>
                <?php echo form_error('message') ?>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="form-group">
                <label for="note">Note</label>
                <input type="text" name="note" id="note" value="<?php echo set_value('note', $screenshot->note) ?>" class="form-control <?php echo is_valid('note') ?>">
                <?php echo form_error('note') ?>
            </div>
            <button class="btn btn-success" type="submit" value="approved" name="status">Approve</button>
            <button class="btn btn-danger" type="submit" value="denied" name="status">Deny</button>
        </div>
    </div>
</form>
<?php else: ?>
<p>There are no pending screenshots.</p>
<?php endif ?>
<?php $this->load->view('footer') ?>
