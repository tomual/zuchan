<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Profile extends MY_Controller {

	public function _remap($user_id, $params = array())
	{
        return call_user_func_array(array($this, 'view'), compact('user_id'));
	}

	public function view($user_id)
	{
		set_title('Profile');
		$this->load->view('profile/coming');
		return;
		$this->load->view('profile/view');
	}
}
