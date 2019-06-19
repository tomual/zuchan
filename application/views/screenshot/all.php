<?php $this->load->view('header') ?>

<div class="row">
	<div class="sidebar col-lg-12">
		<div class="screenshots all">
			<div class="topic">
				<a href="">MapleStory Media</a>
				<a href="<?php echo base_url('screenshot/new') ?>" class="float-right"><span class="jam jam-plus"></span> New</a>
			</div>
			<div class="row">
			<?php foreach ($screenshots as $screenshot): ?>
				<div class="screenshot col-sm-3 col-6">
					<a href="<?php echo base_url("screenshot/view/{$screenshot->id}") ?>"><img src="<?php echo base_url("img/screenshots/thumb/thumb-{$screenshot->file}") ?>"></a>
					<a href="<?php echo base_url("screenshot/view/{$screenshot->id}") ?>"><div class="title"><?php echo $screenshot->title ?></div></a>
					<a href="<?php echo base_url("profile/{$screenshot->created_by}") ?>"><div class="submitter"><?php echo $screenshot->username ?></div></a>
					<a href="<?php echo base_url("screenshot/view/{$screenshot->id}") ?>"><div class="like text-muted"><span class="jam jam-message-alt"></span><?php echo $screenshot->posts ?></div></a>
				</div>
			<?php endforeach ?>
			</div>
		</div>
	</div>
</div>
<?php $this->load->view('footer') ?>