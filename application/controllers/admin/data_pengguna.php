<?php

class Data_pengguna extends CI_Controller
{

    function __construct()
    {
        parent::__construct();
        if ($this->session->userdata('user_level') != '1') {
            redirect(base_url('auth'));
        }
        $this->load->model('m_pengguna');
        $this->load->helper('url');
    }

    public function index()
    {

        $data['data'] = $this->m_pengguna->get_pengguna();
        $this->load->view('templates_admin/header');
        $this->load->view('templates_admin/sidebar');
        $this->load->view('admin/data_pengguna', $data);
        $this->load->view('templates_admin/footer');
    }

    function tambah_pengguna()
    {

        if ($this->session->userdata('user_level') == '1') {
            $nama = $this->input->post('nama');
            $username = $this->input->post('username');
            $password = $this->input->post('password');
            $password2 = $this->input->post('password2');
            $level = $this->input->post('level');
            $cek_pengguna = $this->db->query("SELECT * FROM tbl_user WHERE user_username = '$username'");
            if ($password2 <> $password) {
                echo $this->session->set_flashdata('msg', '<label class="label label-danger">Password yang Anda Masukan Tidak Sama</label>');
                redirect('admin/data_pengguna');
            } else {
                if($cek_pengguna->num_rows() != 0) {
                    echo $this->session->set_flashdata('msg', '<label class="label label-danger">Username sudah ada!</label>');
                    redirect('admin/data_pengguna');
                    } else{
                        $this->load->model('m_pengguna');
                         $options = [
                        'cost' => 12
                         ]; 
                            $password = password_hash($password, PASSWORD_BCRYPT, $options);
                            $this->m_pengguna->simpan_pengguna($nama, $username, $password, $level);
                            echo $this->session->set_flashdata('msg', '<label class="label label-success">Pengguna Berhasil ditambahkan</label>');
                            redirect('admin/data_pengguna');
                        
                    }
            }
             } else {
                 echo "Halaman tidak ditemukan";
             }
        
    }

    function hapus($id)
    {
        $where = array('user_id' => $id);
        // $this->load->model('m_pengguna');
        // $this->m_pengguna->hapus_data($where, 'tbl_user');
        $data = array(
            'user_status' => '0'
        );
        $this->db->where($where);
        $this->db->update('tbl_user', $data);
        redirect('admin/data_pengguna');
    }

    function edit_pengguna()
    {
        if ($this->session->userdata('user_level') == '1') {
        $kode = $this->input->post('kode');
        $nama = $this->input->post('nama');
        $username = $this->input->post('username');
        $password = $this->input->post('password');
        $password2 = $this->input->post('password2');
        $level = $this->input->post('level');
        if (empty($password) && empty($password2)) {
            $this->m_pengguna->update_pengguna_nopass($kode, $nama, $username, $level);
             echo $this->session->set_flashdata('msg', '<label class="label label-success">Pengguna Berhasil diupdate</label>');
            redirect('admin/data_pengguna');
        } elseif ($password2 <> $password) {
             echo $this->session->set_flashdata('msg', '<label class="label label-danger">Password yang Anda Masukan Tidak Sama</label>');
            redirect('admin/data_pengguna');
        } else {
            $this->load->model('m_pengguna');
            $options = [
                'cost' => 12
            ];
            $password = password_hash($password, PASSWORD_BCRYPT, $options);
            $this->m_pengguna->update_pengguna($kode, $nama, $username, $password, $level);
             echo $this->session->set_flashdata('msg', '<label class="label label-success">Pengguna Berhasil diupdate</label>');
            redirect('admin/data_pengguna');
        }
        } else {
             echo "Halaman tidak ditemukan";
         }
    }
}