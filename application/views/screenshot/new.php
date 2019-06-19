<?php $this->load->view('header') ?>

<div class="row">
    <div class="col-lg-12">
        <div class="topic"><a href="">New Screenshot</a></div>
    </div>
</div>
<div class="row">
    <div class="col-lg-8">
        <?php alerts() ?>
        <form method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="type">Type</label>
                <div class="form-check">
                    <input class="form-check-input <?php echo is_valid('category') ?>" type="radio" value="art" id="category-art" name="category" <?php echo set_radio('category', 'art') ?>>
                    <label class="form-check-label" for="category-art">Art</label>
                </div>
                <div class="form-check">
                    <input class="form-check-input <?php echo is_valid('category') ?>" type="radio" value="meme" id="category-meme" name="category" <?php echo set_radio('category', 'meme') ?>>
                    <label class="form-check-label" for="category-meme">Meme</label>
                </div>
                <div class="form-check">
                    <input class="form-check-input <?php echo is_valid('category') ?>" type="radio" value="screenshot" id="category-screenshot" name="category" <?php echo set_radio('category', 'screenshot') ?>>
                    <label class="form-check-label" for="category-screenshot">Screenshot</label>
                    <?php echo form_error('category') ?>
                </div>
            </div>
            <div class="form-group">
                <label for="title">Post Title</label>
                <input type="text" name="title" id="title" value="<?php echo set_value('title') ?>" class="form-control <?php echo is_valid('title') ?>">
                <?php echo form_error('title') ?>
            </div>
            <div class="form-group">
                <label for="file">Image File</label>
                <input type="file" name="file" accept="image/*,.pdf" class="form-control <?php echo is_valid('file') ?>" >
                <small class="form-text text-muted">Must be your content. Max size 700kb 1980x1080</small>
                <?php echo form_error('file') ?>
            </div>
            <div class="form-group">
                <label for="message">Post Message</label>
                <textarea name="message" id="message" class="form-control <?php echo is_valid('message') ?>" rows="6"><?php echo set_value('message') ?></textarea>
                <?php echo form_error('message') ?>
            </div>
            <div class="form-check">
                <input class="form-check-input <?php echo is_valid('ownership') ?>" type="checkbox" value="1" id="ownership" name="ownership" <?php echo set_checkbox('ownership', 1) ?>>
                <label class="form-check-label" for="ownership">I am the creator of this content</label>
                <?php echo form_error('ownership') ?>
            </div>
            <div class="form-group">
                <input type="submit" value="Post" class="btn btn-primary">
            </div>
        </form>
    </div>
    <div class="col-lg-4">
        <h2>Submission Information</h2>
        <ul>
            <li>Only content <b>created by you</b> can be submitted.</li>
            <li>It will go through approval once submitted.</li>
            <li>You will receive a message when your submission has been processed.</li>

        </ul>
    </div>
</div>
<?php $this->load->view('footer') ?>
