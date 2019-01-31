<?php
defined('BASEPATH') OR exit('No direct script access allowed');


class Test extends CI_Controller
{
//------------------------------------------------------------------------------
    public function __construct()
    {
        parent::__construct();
        $this->load->model('user_model');
        //$result = $this->user_model->get();
        //$result = $this->user_model->insert(['login' => 'Markus']);
        $result = $this->user_model->delete();
        echo '<pre>';
        print_r($result);
    }

//------------------------------------------------------------------------------

    public function test_get()
    {
        $data = $this->user_model->get(5);
        print_r($data);
    }

//------------------------------------------------------------------------------

    public function test_insert()
    {
        $result = $this->user_model->insert([
            'login' => 'Jethro'
        ]);
        print_r($result);
    }

//------------------------------------------------------------------------------

    public function test_update()
    {
        $result = $this->user_model->update([
            'login' => 'Peggy'
        ], 3);
        print_r($result);
    }

//------------------------------------------------------------------------------


    public function test_delete($user_id)
    {
        $result = $this->user_model->delete($user_id);
        print_r($result);
    }

}
