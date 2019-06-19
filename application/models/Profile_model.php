<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Profile_model extends CI_Model {

    public function create($user_id, $name, $location, $interests, $age, $occupation, $server, $class)
    {
        $data = array(
            'user_id' => $user_id,
            'name' => $name,
            'location' => $location,
            'interests' => $interests,
            'age' => $age,
            'occupation' => $occupation,
            'server' => $server,
            'class' => $class
        );
        $this->db->insert('profiles', $data);
        return $this->db->insert_id();
    }

    function get_by_user_id($user_id) 
    {
        $this->db->where('user_id', $user_id);
        $this->db->from('profiles');
        $result = $this->db->get();
        return $result->first_row();
    }

    public function update($user_id, $name, $location, $interests, $age, $occupation, $server, $class)
    {
        $data = array(
            'user_id' => $user_id,
            'name' => $name,
            'location' => $location,
            'interests' => $interests,
            'age' => $age,
            'occupation' => $occupation,
            'server' => $server,
            'class' => $class
        );
        $this->db->where('user_id', $user_id);
        $this->db->update('profiles', $data);
        return $this->db->affected_rows();
    }
}
