<?php

class Dashboard_admin extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        if ($this->session->userdata('user_level') != '1') {
            $this->load->model('M_dashboard');
            redirect(base_url('auth'));
        }
        $this->load->model('m_kategori');
        $this->load->model('m_barang');
        $this->load->model('m_suplier');
        $this->load->model('m_pembelian');
        $this->load->model('m_penjualan');
        $this->load->model('m_laporan');
    }

    public function index()
    {
        if ($this->session->userdata('user_level') == '1') {
        $data['brg'] = $this->db->select('*')->from('tbl_barang')->get()->num_rows();
        $data['spl'] = $this->db->select('*')->from('tbl_suplier')->get()->num_rows();
        $data['totalpnjln'] = $this->m_laporan->get_sum();
        $data['stok'] = $this->m_laporan->get_summ();
        $this->load->view('templates_admin/header');
        $this->load->view('templates_admin/sidebar');
        $this->load->view('admin/dashboard', $data);
        $this->load->view('templates_admin/footer'); 
    } else {
        echo "Halaman tidak ditemukan";
    }

    }


    
}
