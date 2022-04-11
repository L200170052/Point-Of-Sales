<?php
class Data_retur extends CI_Controller
{

	function __construct()
	{
		parent::__construct();
		if ($this->session->userdata('user_level') != '1') {
			redirect(base_url('auth'));
		}
		$this->load->model('m_kategori');
		$this->load->model('m_barang');
		$this->load->model('m_suplier');
		$this->load->model('m_penjualan');
	}
	function index()
	{
		if($this->session->userdata('user_level')=='1' || $this->session->userdata('user_level')=='2'){
		$data['data'] = $this->m_barang->tampil_barang();
		$data['retur'] = $this->m_penjualan->tampil_retur();

		$this->load->view('templates_admin/header');
		$this->load->view('templates_admin/sidebar');
		$this->load->view('admin/data_retur', $data);
		$this->load->view('templates_admin/footer');
		}else{
		     echo "Halaman tidak ditemukan";
		 }
	}
	function get_barang()
	{
		if($this->session->userdata('user_level')=='1' || $this->session->userdata('user_level')=='2'){
		$kobar = $this->input->post('kode_brg');
		$x['brg'] = $this->m_barang->get_barang($kobar);
		$this->load->view('admin/detail_barang_retur', $x);
		}else{
		     echo "Halaman tidak ditemukan";
		 }
	}

	function simpan_retur()
	{
		if($this->session->userdata('user_level')=='1' || $this->session->userdata('user_level')=='2'){
		$kobar = $this->input->post('kode_brg');
		$nabar = $this->input->post('nabar');
		$satuan = $this->input->post('satuan');
		$harjul = str_replace(",", "", $this->input->post('harjul'));
		$qty = $this->input->post('qty');
		$keterangan = $this->input->post('keterangan');
		$this->m_penjualan->simpan_retur($kobar, $nabar, $satuan, $harjul, $qty, $keterangan);
		redirect('admin/data_retur');
		}else{
		     echo "Halaman tidak ditemukan";
		 }
	}

	function hapus_retur()
	{
		if($this->session->userdata('user_level')=='1' || $this->session->userdata('user_level')=='2'){
		$kode = $this->uri->segment(4);
		$this->m_penjualan->hapus_retur($kode);
		redirect('admin/data_retur');
		}else{
		     echo "Halaman tidak ditemukan";
		 }
	}
}
