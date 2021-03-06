<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

class Gallery_model extends CI_Model {

    function __construct() {
        // Call the Model constructor
        parent::__construct();
        $this->db->set_dbprefix('tbl_');
    }
	
	public function get_upload_type($part_id='',$type='') {
		$data = array();

        $this->db->where('part_id',$part_id);
        $this->db->where('type',$type);  

        $Q = $this->db->get('participant_images');
        
        if ($Q->num_rows() > 0){
            $data = $Q->result_object();
        }

        $Q->free_result();
        return $data;
	}
	
    public function get_all_gallery ($part_id, $limit = 0, $start = 0) {
        $data = array();

        $this->db->where('part_id',$part_id);
        //$this->db->where('status',1);        
        $this->db->order_by('id','desc');

        $Q = $this->db->get('participant_images');
        
        if ($Q->num_rows() > 0){
            $data = $Q->result_object();
        }

        $Q->free_result();
        return $data;   
    }

	public function get_user_gallery ($part_id, $limit = 0, $start = 0) {
        $data = array();

        $this->db->where('part_id',$part_id);
        $this->db->where('status',1);        
		$this->db->order_by('id','desc');

        $this->db->limit($limit, $start);
        
		$Q = $this->db->get('participant_images');
        
        if ($Q->num_rows() > 0){
			$data = $Q->result_object();
		}

		$Q->free_result();
		return $data;	
	}
	
	public function get_all_images ($limit = 0, $start = 0, $order=array(), $search='', $column=array(), $status='') {
		$data = array();
        
        if ($search != '') {       
            $this->db->like('name', $search); 
        } 
        if ($status != '') {
			$this->db->where('status',$status);
        }
		$this->db->where('file_name !=','');
        
        if (is_array($order)) {
            foreach ($order as $key => $value) {                
                $this->db->order_by($key,$value);
            }
        }
		
		if (is_array($column)) {
            foreach ($column as $col => $val) {      			
                $this->db->where($col, $val);
            }
        }
        $this->db->limit($limit, $start);        

		$Q = $this->db->get('participant_images');
		if ($Q->num_rows() > 0){
			$data = $Q->result_object();
		}
		
        $Q->free_result();
        
		//print_r($this->db->last_query());
		
		return $data;	
	}

    public function get_count_images ($search='',$column=array(),$status='') {
        if (!empty($search)) {
            $this->db->like('name', $search);            
        }
		if (is_array($column)) {
            foreach ($column as $col => $val) {                
                $this->db->where($col, $val);
            }
        }
		if ($status != '') {
			$this->db->where('status',$status);
        }
        $this->db->from('participant_images');
        return $this->db->count_all_results();
    }

    public function get_count_user_images ($part_id=0) {
        $this->db->where('part_id',$part_id);
        $this->db->where('status', 1);
        $this->db->from('participant_images');
        return $this->db->count_all_results();
    }
	
    public function get_image($image_id='',$part_id='') {
        $data = array();
        $this->db->where('id',$image_id);
        //$this->db->where('part_id',$part_id);        
        $Q = $this->db->get('participant_images');
        if ($Q->num_rows() > 0){
            foreach ($Q->result_object() as $row)
            $data = $row;
        }
        $Q->free_result();
        return $data;   
    }

    public function insert_image($image) {
        $this->db->insert('participant_images', $image);
        return $this->db->insert_id();
    }

    public function unscore($part_id, $image_id) {
        $this->db->where('part_id', $part_id);
        $this->db->where('image_id', $image_id);
        return $this->db->delete('user_scores');
    }

    public function insert_score($part_id, $image_id) {
        $score['part_id']   = $part_id;
        $score['image_id']  = $image_id;
        $score['added']     = time();
        $score['modified']  = time();        
        if ($this->db->insert('user_scores', $score)) {
            return $this->update_total_score($image_id);
        }
    }

    public function update_total_score($image_id) {
        $score['count']     = $this->check_score($image_id);
        $score['modified']  = time();
        $this->db->where('id', $image_id);
        return $this->db->update('participant_images', $score);            
    }

    public function check_score($image_id) {
        $this->db->where('image_id', $image_id);
        $this->db->from('user_scores');
        return $this->db->count_all_results();
    }

    public function check_ifscored($part_id, $image_id) {
        $this->db->where('part_id', $part_id);
        $this->db->where('image_id', $image_id);
        $this->db->from('user_scores');
        $result = 0;
        if ($this->db->count_all_results() > 0) {
            $result = 1;
        }
        return $result;
    }

    public function total_score($image_id) {
        $this->db->where('image_id', $image_id);
        $this->db->select('count(1) as total');
        return $this->db->get('user_scores')->row()->total;
    }

    public function total_score_admin($image_id) {
        $this->db->where('image_id', $image_id);
        $this->db->select('count(1) as total');
        return $this->db->get('user_scores')->row()->total;
    }

    public function total_image_submitted($part_id) {
        $this->db->where('part_id', $part_id);
        $this->db->select('count(1) as total');
        return $this->db->get('participant_images')->row()->total;
    }   

}

?>
