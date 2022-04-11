<?php
class Data_retur extends CI_Controller
{

	function __construct()
	{
		parent::__construct();
		if ($this->session->userdata('user_level') != '2') {
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

		$this->load->view('templates_kasir/header');
		$this->load->view('templates_kasir/sidebar');
		$this->load->view('kasir/data_retur', $data);
		$this->load->view('templates_kasir/footer');
		 }else{
		     echo "Halaman tidak ditemukan";
		 }
	}
	function get_barang()
	{
		if($this->session->userdata('user_level')=='1' || $this->session->userdata('user_level')=='2'){
		$kobar = $this->input->post('kode_brg');
		$x['brg'] = $this->m_barang->get_barang($kobar);
		$this->load->view('kasir/detail_barang_retur', $x);
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
		redirect('kasir/data_retur');
		}else{
		    echo "Halaman tidak ditemukan";
		 }
	}

	function hapus_retur()
	{
		if($this->session->userdata('user_level')=='1' || $this->session->userdata('user_level')=='2'){
		$kode = $this->uri->segment(4);
		$this->m_penjualan->hapus_retur($kode);
		redirect('kasir/data_retur');
		}else{
		    echo "Halaman tidak ditemukan";
		 }
	}
}
