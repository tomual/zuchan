<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Screenshot_model extends CI_Model {

    public function create($file, $category, $title, $message) 
    {
        $thread_id = $this->thread_model->create('screenshot', $title, $message);
        if (!$thread_id) {
            return null;
        }
        $data = array(
            'thread_id' => $thread_id,
            'file' => $file['upload_data']['file_name'],
            'category' => $category,
            'status' => 'pending'
        );
        $this->db->insert('screenshots', $data);
        return $this->db->insert_id();
    }

    function get($id) 
    {
        $this->db->select('screenshots.*');
        $this->db->select('posts.message, posts.created, posts.created_by, posts.modified, posts.modified_by');
        $this->db->select('threads.post_id, threads.title');
        $this->db->select('users.username, users.label, users.avatar, users.postcount');
        $this->db->where('screenshots.id', $id);
        $this->db->from('screenshots');
        $this->db->join('threads', 'screenshots.thread_id = threads.id', 'left');
        $this->db->join('posts', 'threads.post_id = posts.id', 'left');
        $this->db->join('users', 'posts.created_by = users.id', 'left');
        $result = $this->db->get();
        return $result->first_row();
    }

    function get_by_status($status, $limit = 100) 
    {
        $this->db->select('screenshots.*');
        $this->db->select('posts.message, posts.created, posts.created_by');
        $this->db->select('threads.post_id, threads.title');
        $this->db->select('users.username, users.label, users.avatar, users.postcount');
        $this->db->from('screenshots');
        $this->db->join('threads', 'screenshots.thread_id = threads.id', 'left');
        $this->db->join('posts', 'threads.post_id = posts.id', 'left');
        $this->db->join('users', 'posts.created_by = users.id', 'left');
        $this->db->order_by('created', 'DESC');
        $this->db->where('status', $status);
        $this->db->limit('100');
        $result = $this->db->get()->result();
        $result = $this->thread_model->get_post_counts($result, true);
        return $result;
    }

    function get_for_home() 
    {
        $this->db->select('screenshots.*');
        $this->db->select('posts.created_by');
        $this->db->select('threads.post_id, threads.title');
        $this->db->select('users.username');
        $this->db->from('screenshots');
        $this->db->join('threads', 'screenshots.thread_id = threads.id', 'left');
        $this->db->join('posts', 'threads.post_id = posts.id', 'left');
        $this->db->join('users', 'posts.created_by = users.id', 'left');
        $this->db->order_by('created', 'DESC');
        // $this->db->where('posts.created BETWEEN (NOW() - INTERVAL 2 DAY) AND NOW()');
        $this->db->where('status', 'approved');
        $this->db->limit('20');
        $result = $this->db->get();
        $screenshots = $result->result();
        shuffle($screenshots);
        $screenshots = $this->thread_model->get_post_counts($screenshots, true);
        return array_slice($screenshots, 0, 6);
    }

    function get_by_thread_id($thread_id) 
    {
        $this->db->from('screenshots');
        $this->db->where('thread_id', $thread_id);
        $result = $this->db->get();
        return $result->first_row();
    }

    function update($id, $thread_id, $post_id, $title, $message, $status, $category, $file, $note = null) 
    {
        $this->thread_model->update($thread_id, $post_id, $title, $message);
        $data = array(
            'file' => $file,
            'category' => $category,
            'status' => $status,
            'note' => $note
        );
        $this->db->where('id', $id);
        $this->db->update('screenshots', $data);
        return $this->db->affected_rows();
    }
}
