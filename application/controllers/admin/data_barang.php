<?php
class Data_barang extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('m_kategori');
        $this->load->model('m_barang');
        if ($this->session->userdata('user_level') != '1') {
            redirect(base_url('auth'));
        }
    }

    function index()
    {
        if ($this->session->userdata('user_level') == '1') {
        $data['data'] = $this->m_barang->tampil_barang();
        $data['kat'] = $this->m_kategori->tampil_kategori();
        $data['kat2'] = $this->m_kategori->tampil_kategori();
        $this->load->view('templates_admin/header');
        $this->load->view('templates_admin/sidebar');
        $this->load->view('admin/data_barang', $data);
        $this->load->view('templates_admin/footer');
         } else {
             echo "Halaman tidak ditemukan";
         }
    }
    function tambah_barang()
    {
        if ($this->session->userdata('user_level') == '1') {
        $kobar = $this->m_barang->get_kobar();
        $nabar = $this->input->post('nabar');
        $kat = $this->input->post('kategori');
        $satuan = $this->input->post('satuan');
        $harpok = str_replace(',', '', $this->input->post('harpok'));
        $harjul = str_replace(',', '', $this->input->post('harjul'));
        $harjul_grosir = str_replace(',', '', $this->input->post('harjul_grosir'));
        $stok = $this->input->post('stok');
        $min_stok = $this->input->post('min_stok');
        $this->m_barang->simpan_barang($kobar, $nabar, $kat, $satuan, $harpok, $harjul, $harjul_grosir, $stok, $min_stok);

        redirect('admin/data_barang');
         } else {
             echo "Halaman tidak ditemukan";
         }
    }
    function edit_barang()
    {
        if ($this->session->userdata('user_level') == '1') {
        $kobar = $this->input->post('kobar');
        $nabar = $this->input->post('nabar');
        $kat = $this->input->post('kategori');
        $satuan = $this->input->post('satuan');
        $harpok = str_replace(',', '', $this->input->post('harpok'));
        $harjul = str_replace(',', '', $this->input->post('harjul'));
        $harjul_grosir = str_replace(',', '', $this->input->post('harjul_grosir'));
        $stok = $this->input->post('stok');
        $min_stok = $this->input->post('min_stok');
        $this->m_barang->update_barang($kobar, $nabar, $kat, $satuan, $harpok, $harjul, $harjul_grosir, $stok, $min_stok);
        redirect('admin/data_barang');
        } else {
             echo "Halaman tidak ditemukan";
        }
    }
    function hapus_barang()
    {
        if ($this->session->userdata('user_level') == '1') {
        $kode = $this->input->post('kode');
        $this->m_barang->hapus_barang($kode);
        redirect('admin/data_barang');
        } else {
             echo "Halaman tidak ditemukan";
         }
    }


}
