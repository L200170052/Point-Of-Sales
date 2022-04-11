<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Auth extends CI_Controller
{
    public function index()
    {
        cekSudahLogin();
        $data['judul'] = "Silahkan Masuk..!";
        $this->load->view('templates_auth/auth_header');
        $this->load->view('auth/login', $data);
        $this->load->view('templates_auth/auth_footer');
    }

    private function _validasiInput()
    {
        $form = [
            [
                'label' => 'Username',
                'field' => 'username',
                'rules' => 'required'
            ],
            [
                'label' => 'Password',
                'field' => 'password',
                'rules' => 'required'
            ]
        ];

        $this->form_validation->set_rules($form);
        return $this->form_validation->run();
    }

    public function loginProses()
    {
        if ($this->_validasiInput()) {
            $username = $this->input->post('username');
            $password = $this->input->post('password');

            $this->db->select('*');
            $this->db->from('tbl_user');
            $this->db->where('user_username', $username);
            $query = $this->db->get();
            $user = $query->row_array();

            if ($user) {
                if ($user['user_status'] == '1') {
                    if (password_verify($password, $user['user_password'])) {
                        $data = [
                            'user_id' => $user['user_id'],
                            'user_nama' => $user['user_nama'],
                            'user_username' => $user['user_username'],
                            'user_level' => $user['user_level']
                        ];

                        $this->session->set_userdata($data);

                        if ($user['user_level'] == '1') {
                            redirect(base_url('admin/dashboard_admin'));
                        } elseif ($user['user_level'] == '2') {
                            redirect(base_url('kasir/dashboard_kasir'));
                        }
                    } else {
                        $this->session->set_flashdata(
                            'message_autentifikasi',
                            '<div class="alert alert-danger alert-dismissible fade show">
                                <strong>Failed!</strong> Username atau Password anda salah.
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>'
                        );
                        redirect(base_url('auth'));
                    }
                } else {
                    $this->session->set_flashdata(
                        'message_autentifikasi',
                        '<div class="alert alert-danger alert-dismissible fade show">
                            <strong>Failed!</strong> Username atau Password anda salah.
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>'
                    );
                    redirect(base_url('auth'));
                }
            } else {
                $this->session->set_flashdata(
                    'message_autentifikasi',
                    '<div class="alert alert-danger alert-dismissible fade show">
                        <strong>Failed!</strong> Username atau Password anda salah.
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>'
                );
                redirect(base_url('auth'));
            }
        } else {
            $this->session->set_flashdata(
                'message_autentifikasi',
                '<div class="alert alert-danger alert-dismissible fade show">
                    <strong>Failed!</strong> Username atau Password anda salah.
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>'
            );
            redirect(base_url('auth'));
        }
    }

    public function logoutProses()
    {
        $this->session->unset_userdata('user_nama');
        $this->session->unset_userdata('user_username');
        $this->session->unset_userdata('user_level');
        $this->session->set_flashdata(
            'message_autentifikasi',
            '<div class="alert alert-success alert-dismissible fade show">
                <strong>Success!</strong> Anda berhasil logout.
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>'
        );
        redirect(base_url('auth'));
    }

}
