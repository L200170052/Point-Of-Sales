<?php

function cekSudahLogin()
{
    $ci = get_instance();

    if (!empty($ci->session->userdata('user_level'))) {
        if ($ci->session->userdata('user_level') == '1') {
            redirect(base_url('admin/dashboard_admin'));
        } elseif ($ci->session->userdata('user_level') == '2') {
            redirect(base_url('kasir/dashboard_kasir'));
        }
    }
}
