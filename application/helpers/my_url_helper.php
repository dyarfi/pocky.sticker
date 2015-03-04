<?php


if (!function_exists('fb_url')) {

    function fb_url($uri = '') {
        $CI = & get_instance();
        $temp = '';
        if ($CI->config->item('data') != '') {
            $temp = '?data=' . $CI->config->item('data');
        }
        return $CI->config->base_url($uri) . $temp;
    }

}