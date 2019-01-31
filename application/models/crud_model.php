<?php

class CRUD_model extends CI_Model {

  protected $_table = null;
  protected $_primary_key = null;

  public function __construct() {
    parent::__construct();
  }

  public function get($id = null, $order_by = null)
  {

    if (is_numeric($id)) {
      $this->db->where($this->_primary_key, $id);
    }

    if (is_array($id) ) {
      foreach ($id as $_key => $_value) {
          $this->db->where($_key, $_value);
      }
    }
      $q = $this->db->get($this->_table);
      return $q->result_array();
  }



  public function insert($data){

      $this->db->insert($this->_table , $data);
      return $this->db->insert_id();

  }



  public function update($data, $user_id)
  {
    $this->db->where(['user_id'=> $user_id]);
    $this->db->update('user', $data);
    return $this->db->affected_rows();



  }
  public function delete($id){
        if(is_numeric($id)) {
             $this->db->where($this->_primary_key, $id );
        }
         elseif (is_array($id)) {
          foreach ($id as $_key => $_value) {
              $this->db->where($_key, $_value);}
        }
        else {
          die("You must pass a parameter to the DELETE() method.");
        }
        $this->db->delete($this->_table );
        return $this->db->affected_rows();
  }

}
