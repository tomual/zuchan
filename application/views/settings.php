<?php $this->load->view('header') ?>
<div class="col-lg-4 offset-lg-4">
</div>

<div>
    <div class="row">
        <div class="col-lg-12">
            <div class="topic"><a href="">Settings</a></div>
            <?php echo validation_errors() ?>
            <?php form_errors() ?>
            <?php alerts() ?>
        </div>
    </div>
    <div class="row">
        <div class="col-3">
            <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                <a class="nav-link active show" id="settings-profile-tab" data-toggle="pill" href="#settings-profile" role="tab" aria-controls="settings-profile" aria-selected="true">Profile</a>
                <a class="nav-link" id="settings-preferences-tab" data-toggle="pill" href="#settings-preferences" role="tab" aria-controls="settings-preferences" aria-selected="false">Preferences</a>
                <a class="nav-link" id="settings-account-tab" data-toggle="pill" href="#settings-account" role="tab" aria-controls="settings-account" aria-selected="false">Account</a>
            </div>
        </div>
        <div class="col-6">
            <div class="tab-content" id="v-pills-tabContent">
                <div class="tab-pane fade active show" id="settings-profile" role="tabpanel" aria-labelledby="settings-profile-tab">
                    <form method="post" action="<?php echo base_url('settings/edit_profile') ?>" enctype="multipart/form-data">
                        <h2>Avatar</h2>
                        <div class="form-group">
                            <img class="avatar" src="<?php echo base_url('img/avatars/' . $user->avatar) ?>">
                            <br>
                            <label for="file">Avatar File</label>
                            <input type="file" name="file" accept="image/*" class="form-control <?php echo is_valid('file') ?>" >
                            <small class="form-text text-muted">Max size 250x250</small>
                            <?php echo form_error('file') ?>
                        </div>
                        <hr class="my-3">
                        <h2>MapleStory Info</h2>
                        <div class="form-group">
                            <label for="label" class="form-label">Personal Label</label>
                            <input type="text" name="label" id="label" value="<?php echo set_value('label', $user->label) ?>" class="form-control <?php echo is_valid('label') ?>">
                            <small class="form-text text-muted">This will display below your username in posts</small>
                            <?php echo form_error('label') ?>
                        </div>
                        <div class="form-group">
                            <label for="server" class="form-label">Server</label>
                            <input type="text" name="server" id="server" value="<?php echo set_value('server', $profile->server) ?>" class="form-control <?php echo is_valid('server') ?>">
                            <?php echo form_error('server') ?>
                        </div>
                        <div class="form-group">
                            <label for="class" class="form-label">Class</label>
                            <input type="text" name="class" id="class" value="<?php echo set_value('class', $profile->class) ?>" class="form-control <?php echo is_valid('class') ?>">
                            <?php echo form_error('class') ?>
                        </div>
                        <hr class="my-3">
                        <h2>IRL Info</h2>
                        <div class="form-group">
                            <label for="name" class="form-label">Name</label>
                            <input type="text" name="name" id="name" value="<?php echo set_value('name', $profile->name) ?>" class="form-control <?php echo is_valid('name') ?>">
                            <?php echo form_error('name') ?>
                        </div>
                        <div class="form-group">
                            <label for="age" class="form-label">Age</label>
                            <input type="text" name="age" id="age" value="<?php echo set_value('age', $profile->age) ?>" class="form-control <?php echo is_valid('age') ?>">
                            <?php echo form_error('age') ?>
                        </div>
                        <div class="form-group">
                            <label for="location" class="form-label">Location</label>
                            <input type="text" name="location" id="location" value="<?php echo set_value('location', $profile->location) ?>" class="form-control <?php echo is_valid('location') ?>">
                            <?php echo form_error('location') ?>
                        </div>
                        <div class="form-group">
                            <label for="occupation" class="form-label">Occupation</label>
                            <input type="text" name="occupation" id="occupation" value="<?php echo set_value('occupation', $profile->occupation) ?>" class="form-control <?php echo is_valid('occupation') ?>">
                            <?php echo form_error('occupation') ?>
                        </div>
                        <div class="form-group">
                            <label for="interests" class="form-label">Interests</label>
                            <input type="text" name="interests" id="interests" value="<?php echo set_value('interests', $profile->interests) ?>" class="form-control <?php echo is_valid('interests') ?>">
                            <?php echo form_error('interests') ?>
                        </div>
                        <div class="form-group">
                            <input type="submit" value="Save" class="btn btn-primary">
                        </div>
                    </form>
                </div>
                <div class="tab-pane fade" id="settings-preferences" role="tabpanel" aria-labelledby="settings-preferences-tab">
                    <form method="post" action="<?php echo base_url('settings/edit_preferences') ?>">
                        <h2>Preferences</h2>
                        <i>Coming soon!</i>
                        <div class="form-check">
                            <input disabled class="form-check-input" type="checkbox" value="1" id="email-wall" name="email-wall">
                            <label class="form-check-label" for="email-wall">
                            Email me when someone posts on my wall
                            </label>
                        </div>
                        <div class="form-check">
                            <input disabled class="form-check-input" type="checkbox" value="1" id="email-updates">
                            <label class="form-check-label" for="email-updates">
                            Email me updates
                            </label>
                        </div>
                    </form>
                </div>
                <div class="tab-pane fade" id="settings-account" role="tabpanel" aria-labelledby="settings-account-tab">
                    <h2>Account</h2>
                    <form method="post" action="<?php echo base_url('settings/edit_account') ?>">
                        <div class="form-group">
                            <label for="email" class="form-label">Email</label>
                            <input type="text" name="email" id="email" value="<?php echo set_value('email', $this->user->email) ?>" class="form-control <?php echo is_valid('email') ?>">
                            <?php echo form_error('email') ?>
                        </div>
                        <div class="form-group">
                            <label for="password">Current Password</label>
                            <input type="password" name="current_password" id="current_password" value="<?php echo set_value('current_password') ?>" class="form-control <?php echo is_valid('current_password') ?>">
                            <?php echo form_error('current_password') ?>
                        </div>
                        <div class="form-group">
                            <label for="password">Password</label>
                            <input type="password" name="password" id="password" value="<?php echo set_value('password') ?>" class="form-control <?php echo is_valid('password') ?>">
                            <?php echo form_error('password') ?>
                        </div>
                        <div class="form-group">
                            <label for="password2">Password (again)</label>
                            <input type="password" name="password2" id="password2" value="<?php echo set_value('password2') ?>" class="form-control <?php echo is_valid('password2') ?>">
                            <?php echo form_error('password2') ?>
                        </div>
                        <div class="form-group">
                            <input type="submit" value="Save" class="btn btn-primary">
                        </div>
                    </form>
                </div>
            </div>

        </div>
    </div>
</div>
<?php $this->load->view('footer') ?>
