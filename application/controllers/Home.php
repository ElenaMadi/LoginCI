<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Home extends CI_Controller{
  public function index(){

        $this->load->view('home/inc/header_view');
        $this->load->view('home/home_view');
        $this->load->view('home/inc/footer_view');

  }
  public function register(){
    $this->load->view('home/inc/header_view');
    $this->load->view('home/register_view');
    $this->load->view('home/inc/footer_view');

  }


  //public function code(){


//  }
/**  public function test(){
    $this->db   ->select('user_id, login')
                ->from('user')
                ->order_by('user_id DESC');
    $q = $this->db->get();
    print_r($q->result());

  } */


}
