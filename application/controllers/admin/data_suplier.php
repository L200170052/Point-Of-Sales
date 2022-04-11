<?php
class Data_suplier extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        if ($this->session->userdata('user_level') != '1') {
            redirect(base_url('auth'));
        }
        $this->load->model('m_suplier');
    }
    function index()
    {
        if ($this->session->userdata('user_level') == '1') {
        $data['data'] = $this->m_suplier->tampil_suplier();
        $this->load->view('templates_admin/header');
        $this->load->view('templates_admin/sidebar');
        $this->load->view('admin/data_suplier', $data);
        $this->load->view('templates_admin/footer');
        } else {
             echo "Halaman tidak ditemukan";
         }
    }
    function tambah_suplier()
    {
        if ($this->session->userdata('user_level') == '1') {
        $nama = $this->input->post('nama');
        $alamat = $this->input->post('alamat');
        $notelp = $this->input->post('notelp');
        $this->m_suplier->simpan_suplier($nama, $alamat, $notelp);
        redirect('admin/data_suplier');
        } else {
             echo "Halaman tidak ditemukan";
         }
    }
    function edit_suplier()
    {
        if ($this->session->userdata('user_level') == '1') {
        $kode = $this->input->post('kode');
        $nama = $this->input->post('nama');
        $alamat = $this->input->post('alamat');
        $notelp = $this->input->post('notelp');
        $this->m_suplier->update_suplier($kode, $nama, $alamat, $notelp);
        redirect('admin/data_suplier');
        } else {
             echo "Halaman tidak ditemukan";
         }
    }
    function hapus_suplier()
    {
        if ($this->session->userdata('user_level') == '1') {
        $kode = $this->input->post('kode');
        $this->m_suplier->hapus_suplier($kode);
        redirect('admin/data_suplier');
        } else {
             echo "Halaman tidak ditemukan";
         }
    }
}
