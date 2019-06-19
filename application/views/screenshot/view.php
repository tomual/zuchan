<?php $this->load->view('header') ?>

<div class="screenshot">
	<div class="row">
		<div class="col-lg-12">
			<div class="topic">MapleStory Media</div>
			<a href="<?php echo base_url('screenshot/all') ?>" class="text-center d-block mb-3">View All Media &raquo;</a>
			<img src="<?php echo base_url("img/screenshots/{$screenshot->file}") ?>">
			<h1><?php echo $screenshot->title ?></h1>
			<div class="subtitle">Posted by <span class="username"><a href="<?php echo base_url("profile/{$screenshot->created_by}") ?>"><?php echo $screenshot->username ?></a></span> @ <?php echo date('m/d/Y H:i:s', strtotime($screenshot->created)) ?></div>
			<div class="post first" data-id="<?php echo $screenshot->post_id ?>">
				<div class="row">
					<div class="col-lg-3">
						<div class="user">
							<a href="<?php echo base_url("profile/{$screenshot->created_by}") ?>">
								<div class="avatar" style="background-image: url('<?php echo base_url("img/avatars/{$screenshot->avatar}") ?>'">
								</div>
							</a>
							<a href="<?php echo base_url("profile/{$screenshot->created_by}") ?>"><div class="username"><?php echo $screenshot->username ?></div></a>
							<div class="label"><?php echo $screenshot->label ?></div>
							<div class="count"><?php echo $screenshot->postcount ?> posts</div>
						</div>
					</div>
					<div class="col-lg-9">
						<div class="content">
							<?php echo process_post($screenshot->message) ?>
						</div>
						<div class="footer">
							<span class="screenshot-id">#<?php echo $screenshot->post_id ?></span>
							<span class="quote"><span class="jam jam-message-f"></span>Quote</span>
							<span class="flag"><span class="jam jam-flag-f"></span>Flag</span>
							<span class="posted">Posted <?php echo date('m/d/Y H:i:s', strtotime($screenshot->created)) ?></span>
						</div>
					</div>
				</div>
			</div>

			<?php foreach ($replies as $reply): ?>
				<a name="<?php echo $reply->post_id ?>"></a>
				<div class="post" data-id="<?php echo $reply->post_id ?>">
					<div class="row">
					<div class="col-lg-3">
						<div class="user">
							<a href="<?php echo base_url("profile/{$reply->created_by}") ?>">
								<div class="avatar" style="background-image: url('<?php echo base_url("img/avatars/{$reply->avatar}") ?>'">
								</div>
							</a>
							<a href="<?php echo base_url("profile/{$reply->created_by}") ?>"><div class="username"><?php echo $reply->username ?></div></a>
							<div class="label"><?php echo $reply->label ?></div>
							<div class="count"><?php echo $reply->postcount ?> posts</div>
						</div>
					</div>
						<div class="col-lg-9">
							<div class="content">
								<?php echo process_post($reply->message) ?>
							</div>
							<div class="footer">
								<span class="thread-id"><a href="#<?php echo $reply->post_id ?>">#<?php echo $reply->post_id ?></a></span>
								<span class="quote"><span class="jam jam-message-f"></span>Quote</span>
								<span class="flag"><span class="jam jam-flag-f"></span>Flag</span>
							<span class="posted">Posted <?php echo date('m/d/Y H:i:s', strtotime($reply->created)) ?></span>
							</div>
						</div>
					</div>
				</div>

			<?php endforeach ?>

			<a name="reply"></a>
			<div class="reply">
				<div class="row">
					<div class="col-lg-3">
						
					</div>
					<div class="col-lg-9">
						<h2>Post a Reply</h2>
						<?php alerts() ?>
						<form method="post" action="<?php echo base_url("reply/new/{$screenshot->thread_id}") ?>">
							<div class="form-group">
								<label for="message" class="sr-only">Message</label>
								<textarea name="message" id="message" class="form-control" rows="6"></textarea>
							</div>
							<div class="form-group">
								<input type="submit" value="Submit" class="btn btn-primary">
							</div>
						</form>
					</div>
				</div>
			</div>
			
			<a href="<?php echo base_url('screenshot/all') ?>" class="text-center d-block mb-3">View All Media &raquo;</a>
		</div>
	</div>
</div>
<?php $this->load->view('footer') ?>