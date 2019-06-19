<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Thread_model extends CI_Model {

    public function create($topic, $title, $message) {
        $post_id = $this->posts_model->create($message);
        if (!$post_id) {
            return null;
        }
        $data = array(
            'post_id' => $post_id,
            'topic' => $topic,
            'title' => $title
        );
        $this->db->insert('threads', $data);
        return $this->db->insert_id();
    }

    function get($id) {
        $this->db->select('threads.*');
        $this->db->select('users.username, users.label, users.avatar, users.postcount');
        $this->db->select('posts.message, posts.created, posts.created_by, posts.modified, posts.modified_by');
        $this->db->where('threads.id', $id);
        $this->db->from('threads');
        $this->db->join('posts', 'threads.post_id = posts.id', 'left');
        $this->db->join('users', 'posts.created_by = users.id', 'left');
        $result = $this->db->get();
        return $result->first_row();
    }

    function get_by_topic($topic, $limit = 1000) {
        $this->db->select('threads.*');
        $this->db->select('posts.message, posts.created');
        $this->db->where('threads.topic', $topic);
        $this->db->from('threads');
        $this->db->join('posts', 'threads.post_id = posts.id', 'left');
        $this->db->order_by('last_touch', 'DESC');
        $this->db->limit($limit);
        $result = $this->db->get()->result();
        $result = $this->get_post_counts($result);
        return $result;
    }

    function get_post_counts($result, $screenshot = false)
    {
        $thread_ids = array();
        foreach ($result as $index => $thread) {
            if ($screenshot) {
                $thread_ids[] = $thread->thread_id;
            } else {
                $thread_ids[] = $thread->id;
            }
            $result[$index]->posts = 0;
        }

        if (empty($thread_ids)) {
            return $result;
        }

        $this->db->select('thread_id, COUNT(*) as posts');
        $this->db->from('replies');
        $this->db->where_in('thread_id', $thread_ids);
        $this->db->group_by('thread_id');
        $post_counts = $this->db->get()->result();

        foreach ($post_counts as $post_count) {
            foreach ($result as $index => $thread) {
                if ($screenshot) {
                    if ($post_count->thread_id == $thread->thread_id) {
                        $result[$index]->posts = $post_count->posts;
                    }
                } else {
                    if ($post_count->thread_id == $thread->id) {
                        $result[$index]->posts = $post_count->posts;
                    }
                }
            }
        }
        return $result;
    }

    function update($id, $post_id, $title, $message) {
        $update = $this->posts_model->update($post_id, $message);
        $data = array(
            'title' => $title
        );
        $this->db->where('id', $id);
        $this->db->update('threads', $data);
        return $this->db->affected_rows();
    }

    function touch($id) {
        $data = array(
            'last_touch' => date('Y-m-d H:i:s')
        );
        $this->db->where('id', $id);
        $this->db->update('threads', $data);
        return $this->db->affected_rows();
    }
}
