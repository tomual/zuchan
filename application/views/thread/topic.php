<?php $this->load->view('header') ?>

<div class="row">
	<div class="forum col-lg-9">
		<div class="category">
			<div class="topic"><a href=""><?php echo $this->metadata->topics[$topic] ?></a><a href="<?php echo base_url("thread/new/$topic") ?>" class="float-right"><span class="jam jam-plus"></span> New</a></div>
			<div class="threads">
				<?php foreach ($threads as $thread): ?>
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
		</div>
	</div>
	<div class="sidebar col-lg-3">
		<div class="screenshots">
			<div class="topic"><a href="">MapleStory Media</a></div>
			<div class="screenshot">
				<a href="<?php echo base_url('screenshot/12/thing-name') ?>"><img src="https://via.placeholder.com/160x90"></a>
				<a href=""><div class="title">This is the image title</div></a>
				<a href=""><div class="submitter">MyName11</div></a>
				<a href=""><div class="like text-muted"><span class="jam jam-heart"></span>4</div></a>
			</div>
			<div class="screenshot">
				<img src="https://via.placeholder.com/160x90">
				<div class="title">This is the image title</div>
				<div class="submitter">MyName11</div>
				<div class="like text-muted"><span class="jam jam-heart"></span>4</div>
			</div>
			<div class="screenshot">
				<img src="https://via.placeholder.com/160x90">
				<div class="title">This is the image title</div>
				<div class="submitter">MyName11</div>
				<div class="like text-muted"><span class="jam jam-heart"></span>4</div>
			</div>
			<div class="screenshot">
				<img src="https://via.placeholder.com/160x90">
				<div class="title">This is the image title</div>
				<div class="submitter">MyName11</div>
				<div class="like text-muted"><span class="jam jam-heart"></span>4</div>
			</div>
		</div>
	</div>
</div>
<?php $this->load->view('footer') ?>