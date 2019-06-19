<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends MY_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('thread_model');
        $this->load->model('screenshot_model');
    }

	public function index()
	{
        $threads = array(
        	'general' => $this->thread_model->get_by_topic('general', 6),
        	'market' => $this->thread_model->get_by_topic('market', 6),
        	'games' => $this->thread_model->get_by_topic('games', 6),
        	'irl' =>  $this->thread_model->get_by_topic('irl', 6)
        );
        // dd($this->db->last_query());
        $screenshots = $this->screenshot_model->get_for_home();
		$this->load->view('home', compact('threads', 'screenshots'));
	}
}
