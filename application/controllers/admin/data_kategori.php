<?php
class Data_kategori extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        if ($this->session->userdata('user_level') != '1') {
            redirect(base_url('auth'));
        }
        $this->load->model('m_kategori');
        $this->load->helper('url');
    }
    function index()
    {
        if ($this->session->userdata('user_level') == '1') {
        $data['data'] = $this->m_kategori->tampil_kategori();
        $this->load->view('templates_admin/header');
        $this->load->view('templates_admin/sidebar');
        $this->load->view('admin/data_kategori', $data);
        $this->load->view('templates_admin/footer');
        } else {
             echo "Halaman tidak ditemukan";
         }
    }
    function tambah_kategori()
    {
        if ($this->session->userdata('user_level') == '1') {
        $kat = $this->input->post('kategori');
        $this->m_kategori->simpan_kategori($kat);
        redirect('admin/data_kategori');
        } else {
             echo "Halaman tidak ditemukan";
         }
    }
    function edit_kategori()
    {
        if ($this->session->userdata('user_level') == '1') {
        $kode = $this->input->post('kode');
        $kat = $this->input->post('kategori');
        $this->m_kategori->update_kategori($kode, $kat);
        redirect('admin/data_kategori');
        } else {
             echo "Halaman tidak ditemukan";
         }
    }
    function hapus_kategori()
    {
        if ($this->session->userdata('user_level') == '1') {
        $kode = $this->input->post('kode');
        $this->m_kategori->hapus_kategori($kode);
        redirect('admin/data_kategori');
        } else {
             echo "Halaman tidak ditemukan";
         }
    }
}
