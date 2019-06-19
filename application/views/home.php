<?php $this->load->view('header') ?>

<div class="row">
	<div class="forum col-lg-9">
		<?php foreach ($this->metadata->topics as $key => $label): ?>
			<?php if(isset($threads[$key])): ?>
				<div class="category">
					<div class="topic">
						<a href="<?php echo base_url("thread/topic/$key") ?>"><?php echo $label ?></a>
						<a href="<?php echo base_url("thread/new/$key") ?>" class="float-right"><span class="jam jam-plus"></span> New</a>
					</div>
					<div class="threads">
						<?php foreach ($threads[$key] as $thread): ?>
							<a href="<?php echo base_url("thread/view/{$thread->id}") ?>">
								<div class="thread">
									<span class="title"><?php echo $thread->title ?></span>
									<span class="replies">&middot; <?php echo $thread->posts ?> &middot;</span>
									<span class="preview text-muted"><?php echo character_limiter($thread->message, 100) ?></span>
									<span class="posted"><?php echo date('m/d', strtotime($thread->created)) ?></span>
								</div>
							</a>
						<?php endforeach ?>
					</div>
					<a href="<?php echo base_url("thread/topic/$key") ?>"><div class="more text-muted">More &raquo;</div></a>
				</div>
			<?php endif ?>
			
		<?php endforeach ?>
	</div>
	<div class="sidebar col-lg-3">
		<div class="screenshots">
			<div class="topic">
				<a href="<?php echo base_url('screenshot/all') ?>">MapleStory Media</a>
				<a href="<?php echo base_url('screenshot/new') ?>" class="float-right"><span class="jam jam-plus"></span> New</a>
			</div>
			<div class="row">
				<?php foreach ($screenshots as $screenshot): ?>
					<div class="screenshot col-lg-12 col-6">
						<a href="<?php echo base_url("screenshot/view/{$screenshot->id}") ?>"><img src="<?php echo base_url("img/screenshots/thumb/thumb-{$screenshot->file}") ?>"></a>
						<a href="<?php echo base_url("screenshot/view/{$screenshot->id}") ?>"><div class="title"><?php echo $screenshot->title ?></div></a>
						<a href="<?php echo base_url("profile/{$screenshot->created_by}") ?>"><div class="submitter"><?php echo $screenshot->username ?></div></a>
						<a href="<?php echo base_url("screenshot/view/{$screenshot->id}") ?>"><div class="like text-muted"><span class="jam jam-message-alt"></span><?php echo $screenshot->posts ?></div></a>
					</div>
				<?php endforeach ?>
			</div>
		</div>
		<a href="<?php echo base_url('user/signup') ?>"><img src="<?php echo base_url('img/extra/signup.png') ?>"></a>
		<a href="<?php echo base_url('user/signup') ?>">Join the community today! <u>Sign Up</u></a>
	</div>
</div>
<?php $this->load->view('footer') ?>