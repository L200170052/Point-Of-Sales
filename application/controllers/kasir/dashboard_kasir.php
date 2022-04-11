<?php

class Dashboard_kasir extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        if ($this->session->userdata('user_level') != '2') {
            redirect(base_url('auth'));
        }
        $this->load->model('m_laporan');
    }

    public function index()
    {
        if ($this->session->userdata('user_level') == '2') {
            $data['brg'] = $this->db->select('*')->from('tbl_barang')->get()->num_rows();
            $data['spl'] = $this->db->select('*')->from('tbl_suplier')->get()->num_rows();
            $data['ktgr'] = $this->db->select('*')->from('tbl_kategori')->get()->num_rows();
            $data['stok'] = $this->m_laporan->get_summ();
            $this->load->view('templates_kasir/header');
            $this->load->view('templates_kasir/sidebar');
            $this->load->view('dashboard', $data);
            $this->load->view('templates_kasir/footer'); 
        } else {
            echo "Halaman tidak ditemukan";
        }
    
        }
    }