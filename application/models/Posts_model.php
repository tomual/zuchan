<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Posts_model extends CI_Model {

    public function create($message) {
        $data = array(
            'message' => $message,
            'created_by' => $this->user->id
        );
        $this->db->insert('posts', $data);
        return $this->db->insert_id();
    }

    function get($id) {
        $this->db->where('id', $id);
        $this->db->from('posts');
        $result = $this->db->get();
        return $result->first_row();
    }

    function update($id, $message) {
        $data = array(
            'message' => $message,
            'modified_by' => $this->user->id
        );
        $this->db->where('id', $id);
        $this->db->update('posts', $data);
        return $this->db->affected_rows();
    }

    function is_double_posting($thread_id)
    {
        return false;
        if (!$thread_id) {
            return false;
        }
        $last_replier = $this->reply_model->last_reply($thread_id)->created_by ?? null;
        return $last_replier == $this->user->id;
    }

    function seconds_since_post()
    {
        return strtotime('now') - $this->session->userdata('last_post');
    }

    function can_post($thread_id = null)
    {
        $error = null;
        if ($this->is_double_posting($thread_id)) {
            $error = 'You cannot double post.';
        }
        if ($this->seconds_since_post() < COOLDOWN) {
            $error = 'Please wait until posting for ' . (COOLDOWN - $this->seconds_since_post()) . ' more seconds.';
        }
        return $error;
    }

    function set_last_post()
    {
        $this->session->set_userdata('last_post', strtotime('now'));
    }
}
