<?php
defined('BASEPATH') OR exit('No direct script access allowed');

function alerts() {
    $ci =& get_instance();
    $close = '<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>';
    if($ci->session->flashdata('error')) {
        echo '<div class="alert alert-danger alert-dismissible fade show" role="alert">' . $ci->session->flashdata('error') . $close . '</div>';
    }
    if($ci->session->flashdata('info')) {
        echo '<div class="alert alert-info alert-dismissible fade show" role="alert">' . $ci->session->flashdata('info') . $close . '</div>';
    }
    if($ci->session->flashdata('success')) {
        echo '<div class="alert alert-success alert-dismissible fade show" role="alert">' . $ci->session->flashdata('success') . $close . '</div>';
    }
}

function form_errors() {
    $ci =& get_instance();
    $close = '<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>';
    if(validation_errors()) {
        echo '<div class="alert alert-danger alert-dismissible fade show" role="alert">There were errors with the form. Please review the errors and try again.' . $close . '</div>';
    }
}

function set_title($title) {
    $ci =& get_instance();
    $ci->title = $title;
}

function get_title() {
    $ci =& get_instance();
    return $ci->title ?? null;
}

function dd($thing) {
    echo "<pre>";
    print_r ($thing);
    exit();
}

function process_post($post) {
    preg_match('/#([0-9]+)/', $post, $matches);
    if ($matches) {
        $html = "<a href='#{$matches[1]}'><span class='quoting' data-quote-post-id='{$matches[1]}'>{$matches[0]}</span></a>";
        $post = preg_replace('/(#[0-9]+)/', $html, $post);
    }

    return nl2br($post);
}