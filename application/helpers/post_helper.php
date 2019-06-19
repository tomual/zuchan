<?php
defined('BASEPATH') OR exit('No direct script access allowed');

function seconds_since_post()
{
    $ci =& get_instance();
    return strtotime('now') - $ci->session->userdata('last_post');
}

function can_post()
{
    $ci =& get_instance();
    return seconds_since_post() > 30;
}

function set_last_post()
{
    $ci =& get_instance();
    $ci->session->set_userdata('last_post', strtotime('now'));
}