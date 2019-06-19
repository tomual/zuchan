<?php $this->load->view('header') ?>

<div class="row">
    <div class="col-lg-12">
        <div class="topic"><a href="">New Screenshot</a></div>
    </div>
</div>
<div class="row">
    <div class="col-lg-8">
        <h2>Screenshot submitted!</h2>
        <p>Thank you for submitting your image. It will be looked at shortly and will appear in the screenshots section once it has been approved!</p>
        <p><a href="<?php echo base_url('screenshot/all') ?>">Go to screenshots page &raquo;</a></p>
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
