<?php if (!defined('BASEPATH')) exit('No direct script access allowed');


class M_Login extends CI_Model {

	function login(){
        $username = $this->input->post("username");
        $password = $this->input->post("password");
        
        $where = array(
			'username' => $username
        );

        $cek = $this->db->get_where("tbl_users",$where);
        $query = $cek->row_array();
        if($cek->num_rows() > 0){
            if($this->encryption->decrypt($query['password']) == $password){
                $user = $cek->row_array();
                if($user['role'] == "operator"){
                    $newdata = array(
                        'role'     => $user['role'],
                        'nama'     => $user['username'],
                        'id'       => base64_encode($this->encryption->encrypt($user['id'])),
                        'kode_kec' => base64_encode($this->encryption->encrypt($user['kode_kec'])),
                        'kode_desa'=> base64_encode($this->encryption->encrypt($user['kode_desa'])),
                    );
                }
                else{
                    $newdata = array(
                        'role'     => $user['role'],
                        'nama'     => $user['username']
                    );
                }
                $this->session->set_userdata($newdata);
                return $user;
            }
            else{
                return FALSE;
            }
        }
        else{
            return FALSE;
        }
    }
    
    function cek(){
        $username = $this->input->post('username');
        
        $hasil = $this->db->get_where("tbl_users",[ 'username' => $username]);
        if($hasil->num_rows() > 0){
            return FALSE;
        }
        else{
            return TRUE;
        }
    }
}