<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Screenshot extends MY_Controller {

	public $uploaded_file;

    public function __construct()
    {
        parent::__construct();
        $this->load->model('screenshot_model');
        $this->load->model('reply_model');
        $this->load->model('posts_model');
        $this->load->model('thread_model');
    }

	public function new()
	{
		$this->check_authenticated();

		if ($this->input->method() == 'post') {
        	$this->load->library('form_validation');
			$this->form_validation->set_rules('title', 'Title', 'required|min_length[4]|max_length[65]');
			$this->form_validation->set_rules('message', 'Message', 'required|min_length[4]|max_length[2000]');
			$this->form_validation->set_rules('category', 'Category', 'required');
			$this->form_validation->set_rules('ownership', 'Ownership', 'required', array('required' => 'Declaring that this is your content required.'));
			$this->form_validation->set_rules('file', 'File', 'callback_file_check');

			if ($this->form_validation->run() !== FALSE) {
				$file = $this->uploaded_file;
				$category = $this->input->post('category');
				$title = $this->input->post('title');
				$message = $this->input->post('message');

				$id = $this->screenshot_model->create($file, $category, $title, $message);
				if ($id) {
					redirect('screenshot/success');
				}
				$this->session->set_flashdata('error', 'Failed to submit screenshot.');
			}
		}

		set_title('New Screenshot');
		$this->load->view('screenshot/new');
	}

	public function file_check()
    {
        $config['upload_path'] = $this->config->item('screenshots_pending_path');
        $config['allowed_types'] = 'jpg|png';
        $config['max_size'] = 700;
        $config['max_width'] = 1920;
        $config['max_height'] = 1920;
        $config['min_width'] = 500;
        $config['min_height'] = 300;
        $config['file_name'] = $this->session->userdata('id') . '-' . date('Y-m-d his');
        $this->load->library('upload', $config);

        if (!$this->upload->do_upload('file')) {
            $this->form_validation->set_message('file_check', $this->upload->display_errors());
            return false;
        } else {
            $this->uploaded_file = array('upload_data' => $this->upload->data());
            return true;
        }
    }

	public function view($id)
	{
		$screenshot = $this->screenshot_model->get($id);
        $replies = $this->reply_model->get_by_thread($screenshot->thread_id);
		set_title($screenshot->title);
		$this->load->view('screenshot/view', compact('screenshot', 'replies'));
	}

	public function pending($id = null)
	{
		if ($this->user->role != 'admin') {
			show_error('You do not have permission to view this page', 500);
		}
        $this->load->helper('file');

		$screenshot = $this->screenshot_model->get_by_status('pending', 1)[0] ?? null;

		if ($this->input->method() == 'post' && $id) {
        	$this->load->library('form_validation');
			$title = $this->input->post('title');
			$message = $this->input->post('message');
			$status = $this->input->post('status');
			$category = $this->input->post('category');
			$note = $this->input->post('note');
			$file = $screenshot->file;

			if ($status == 'approved') {
				$file_extension = pathinfo($screenshot->file, PATHINFO_EXTENSION);
				$new_filename = $screenshot->id . '-' . url_title($screenshot->title, 'dash', TRUE) . '.' . $file_extension;
				$old_path = $this->config->item('screenshots_pending_path') . $screenshot->file;
				$new_path = $this->config->item('screenshots_approved_path') . $new_filename;
				$move = rename($old_path, $new_path);

				if (!$move) {
					$this->session->set_flashdata('error', 'Failed to copy screenshot to screenshot folder.');
					redirect('screenshot/pending');
				} else {
					$file = $new_filename;
					$file_path = $new_path;
				}

				$thumb_name = 'thumb-' . $file;
				$thumb_path = $this->config->item('screenshots_thumbnail_path') . $thumb_name;
				$thumbnail = generate_thumbnail($file_path, $thumb_path);
				if (!$thumbnail) {
					$this->session->set_flashdata('error', 'Failed to create thumbnail.');
					redirect('screenshot/pending');
				}
			}

			$update = $this->screenshot_model->update($id, $screenshot->thread_id, $screenshot->post_id, $title, $message, $status, $category, $file, $note);
			if ($update) {
				redirect('screenshot/pending');
			}
			$this->session->set_flashdata('error', 'Failed to update screenshot.');
		}
		$this->load->view('screenshot/pending', compact('screenshot'));
	}

	public function success()
	{
		set_title('Screenshot Submitted');
		$this->load->view('screenshot/success');
	}

	public function all()
	{
		$screenshots = $this->screenshot_model->get_by_status('approved');
		set_title('MapleStory Media');
		$this->load->view('screenshot/all', compact('screenshots'));
	}
}
