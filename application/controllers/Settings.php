<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Settings extends Authenticated_Controller {

    public $uploaded_file;

    public function __construct()
    {
        parent::__construct();
        $this->load->model('user_model');
        $this->load->model('profile_model');
        $this->load->library('form_validation');
    }

    public function index()
	{
		$this->edit();
	}

    public function edit()
    {
        $profile = $this->profile_model->get_by_user_id($this->user->id);
        $user = $this->user_model->get($this->user->id);

        set_title('Settings');
        $this->load->view('settings', compact('profile', 'user'));
    }

    function edit_profile()
    {

        if($this->input->method() == 'post') {
            $this->form_validation->set_rules('label', 'Personal Label', 'required|max_length[50]');
            $this->form_validation->set_rules('server', 'Server', 'max_length[50]');
            $this->form_validation->set_rules('class', 'Class', 'max_length[50]');
            $this->form_validation->set_rules('name', 'Name', 'max_length[50]');
            $this->form_validation->set_rules('age', 'Age', 'numeric');
            $this->form_validation->set_rules('location', 'Location', 'max_length[50]');
            $this->form_validation->set_rules('occupation', 'Occupation', 'max_length[50]');
            $this->form_validation->set_rules('interests', 'Interests', 'max_length[100]');
            $this->form_validation->set_rules('file', 'File', 'callback_file_check');

            if ($this->form_validation->run() !== FALSE)
            {
                $file = $this->uploaded_file;
                $user_id = $this->user->id;
                $avatar = null;

                // User
                $label = $this->input->post('label');
                $avatar_url = $this->input->post('avatar_url');

                // Profile
                $server = $this->input->post('server');
                $class = $this->input->post('class');
                $name = $this->input->post('name');
                $age = $this->input->post('age');
                $location = $this->input->post('location');
                $occupation = $this->input->post('occupation');
                $interests = $this->input->post('interests');

                if ($file) {
                    $avatar = $file['upload_data']['file_name'];
                }

                $user_updated = $this->user_model->update_label_avatar($user_id, $avatar, $label);
                $profile_updated = $this->profile_model->update($user_id, $name, $location, $interests, $age, $occupation, $server, $class);

                // dd($user_updated . '-' . $profile_updated);

                if ($user_updated || $profile_updated || $file) {
                    $this->session->set_flashdata('success', 'Your profile has been saved.');
                    redirect('settings/edit');
                }
            }
        }
        $this->edit();
    }

    public function file_check()
    {
        if (empty($_FILES['file']['name'])) {
            return true;
        }
        $config['upload_path'] = $this->config->item('avatars_path');
        $config['allowed_types'] = 'jpg|png';
        $config['max_size'] = 700;
        $config['max_width'] = 300;
        $config['max_height'] = 300;
        $config['min_width'] = 100;
        $config['min_height'] = 100;
        $config['file_name'] = $this->session->userdata('id');
        $this->load->library('upload', $config);
        $this->upload->overwrite = true;

        if (!$this->upload->do_upload('file')) {
            $this->form_validation->set_message('file_check', $this->upload->display_errors());
            return false;
        } else {
            $this->uploaded_file = array('upload_data' => $this->upload->data());
            return true;
        }
    }

    function download_avatar($avatar_url)
    {
        $avatar_url = 'http://nxcache.nexon.net/maplestory/assets-new/img/medal1.png';
        $path = $this->config->item('avatars_path');
        $file_name = $this->user->id . '-' . $this->user->username . '.png';
        file_put_contents($path . $file_name, file_get_contents($avatar_url));
    }

    function check_avatar_url($str)
    {
        // http://msavatar1.nexon.net/Character/HKAGFGLOMMMBNNHNLOJOCMEBCJPHJEBPMEBLINNAPFPLBNKGCCABBGLPKAPCEOODAHJAIJIOJDNPLLJGECMJHPAKGLDPHLOJNCHIJDDMEEHJDFJDKFAMPLJLNNJMJDLABODOBCONDGEIHMELEPDEHLBIMOIBKFAMHEDMHHEEPIONMEHFLLOBHBCOOOIMBIEGKEJFIMOCMNKPJHGAPMBOKMEMJIEJCDKJHACJEPPCDMOHCKEBPAMOIBGMMACLCFBE.png
        if (!empty($str) && !preg_match('/^http:\/\/msavatar1\.nexon\.net\/Character\/.*png/', $str)) {
            $this->form_validation->set_message('check_avatar_url', 'This is not a valid MapleStory ranking avatar URL.');
            return FALSE;
        } else {
            return TRUE;
        }
    }

    function edit_preferences()
    {
        
        $this->edit();
    }

    function edit_account()
    {
        if($this->input->method() == 'post') {
            $this->form_validation->set_rules('email', 'Email', 'required|valid_email');
            $this->form_validation->set_rules('current_password', 'Current Password', 'required');
            $this->form_validation->set_rules('password', 'Password', 'min_length[6]');
            $this->form_validation->set_rules('password2', 'Password Confirmation', 'matches[password]');

            if ($this->form_validation->run() !== FALSE)
            {
                $email = $this->input->post('email');
                $password = $this->input->post('password');
                $user = $this->user_model->log_in($this->user->email, $this->input->post('current_password'));
                if($user) {
                    // If they entered a different email, check availability
                    if($user->email != $email) {
                        if($this->user_model->get_by_email($email)) {
                            $this->session->set_flashdata('error', 'This email is already associated with an account.');
                            redirect('settings/edit');
                        }
                    }
                    $data = array(
                        'email' => $email
                    );
                    if($password) {
                        $data['password'] = password_hash($password, PASSWORD_DEFAULT);
                    }
                    $update = $this->user_model->update($user->id, $data);
                    if($update) {
                        $this->session->set_userdata('user', $this->user_model->get_by_email($email));
                        $this->session->set_flashdata('success', 'Account has been updated.');
                        redirect('settings/edit');
                    }
                    $this->session->set_userdata('id', $user->id);
                    redirect('settings/edit');
                } else {
                    $this->session->set_flashdata('error', 'Incorrect current password.');
                    redirect('settings/edit');
                }
            }
        }
        $this->edit();
    }
}
