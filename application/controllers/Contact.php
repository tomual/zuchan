<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Contact extends MY_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('thread_model');
        $this->load->model('screenshot_model');
    }

	public function index()
	{
        set_title('Contact us');
		$this->load->view('contact');
	}
}
