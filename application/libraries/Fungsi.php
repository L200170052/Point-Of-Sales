<?php

Class Fungsi {
    protected $ci;

    function __construct(){
        $this->ci =& get_instance();
    }

    public function count_item() {
        $this->ci->load->model('M_laporan');
        return $this->ci->M_laporan->get_data_barang()->num_rows();
    }

    

    }
