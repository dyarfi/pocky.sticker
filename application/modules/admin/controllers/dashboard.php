<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Dashboard extends Admin_Controller {

	public function __construct() {
	    parent::__construct();
	    
	    // Set class name
	    $this->_class_name = $this->controller;
	    
	    // Load user model
	    $this->load->model('Users');

	    // Load participant model
	    $this->load->model('participant/Participants');
	    
	    // Load Gallery model
	    $this->load->model('participant/Gallery');
		
		//print_r($this->module_menu);
		
	}
	public function index() {
            
		//print_r($this->Users->getLoginStats());
		//exit;
		
		//print_r($this->Participants->getJoinStats());
		//exit;
		
		// Check if the request via AJAX
		if ($this->input->is_ajax_request()) {
			$this->stat_dashboard();
			return false;
		}
            
	    // Total users count
	    $data['tusers']			= $this->Users->getCount(1);
	    
	    // Total participant count
	    $data['tparticipant']   = $this->Participants->getCount();
	    
	    // Total gallery count
	    $data['timages']	    = $this->Gallery->getCount();
		
		// Total active gallery count
	    $data['ta_images']	    = $this->Gallery->getCount(1);
	    
		// Set class name to view
	    $data['class_name'] = $this->_class_name;
	    
	    // Set module with URL request 
		$data['module_title'] = $this->module;

	    // Set page title
	    $data['title']	= "Dashboard Home";
	    
	    // Set main template
	    $data['main']	= 'admin/dashboard';
	    
		// Set admin title page with module menu
		$data['page_title'] = $this->module_menu;

	    //$this->load->view('template/dashboard');
	    $this->load->view('template/admin/admin_template', $this->load->vars($data));
		
	}
        
	public function stat_dashboard() {
            
            // Check if the request via AJAX
            if (!$this->input->is_ajax_request()) {
                exit('No direct script access allowed');		
            }
            
            /*
			var visitors = [
					['01/2013', 500],
					['02/2013', 1500],
					['03/2013', 2600],
					['04/2013', 1200],
					['05/2013', 560],
					['06/2013', 2000],
					['07/2013', 2350],
					['08/2013', 1500],
					['09/2013', 4700],
					['10/2013', 1300],
				];
			 * 
			 */
			
			// Check range post
			$range_post = $this->input->post('reportrange');
			$range		= explode(" to ", $range_post);
			
			// User login stats
			$login_stats = $this->Users->getLoginStats();
            if(!empty($login_stats)) {
                    
                $temp_login = array();
                foreach ($login_stats as $login) {
                    $temp_login[] = array($login->last_login,$login->total_login);
                }
                $result['result']['stats_login'] = $temp_login;

            }
			
			// Participant Join stats
			$join_stats = $this->Participants->getJoinStats($range);
			
            if(!empty($join_stats)) {
                    
                $temp_join = array();
                foreach ($join_stats as $join) {
                    $temp_join[] = array($join->join_date,$join->total_join);
                }
                $result['result']['stats_join'] = $temp_join;

            }
			
			// Sender statistics Join stats
			$gender_stats = $this->Participants->getGenderStats();
			
            if(!empty($gender_stats)) {
				
				$temp_gender = '';
				foreach ( $gender_stats as $gender) {
					$temp_gender['Pria'] = $gender->pria;
					$temp_gender['Wanita'] = $gender->wanita;
					//$temp_gender['Total'] = array($gender->total);
				}
				$result['result']['gender_stats'] = $temp_gender;

            }
			
			// Sender statistics Oshis Favorite stats
			$oshis_stats = $this->Participants->getOshiStats();
			
            if(!empty($oshis_stats)) {
				  	 
				$temp_oshis  = array();
				foreach ($oshis_stats as $oshi) {
					$temp_oshis[$oshi->oshi_favorite] = $oshi->sum;
				}
				$result['result']['oshis_stats'] = $temp_oshis;

            }
			
            // Return data esult
            $data['json'] = $result;

            // Load data into view		
            $this->load->view('json', $this->load->vars($data));
	    
	}
}
