<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Dashboard extends Admin_Controller {

	public function __construct() {
	    parent::__construct();
	    
	    // Set class name
	    $this->_class_name = $this->controller;
	    
	    // Load user
	    $this->load->model('Users');

	}
	public function index() {
	    $data['title']	= "Dashboard Home";
	    $data['main']	= 'admin/dashboard';
	    $data['tusers']	= $this->Users->getCount(1);

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
	    
	    
	    $stats = $this->Users->getLoginStats('','');
	    
	    
	    // Set class name to view
	    $data['class_name'] = $this->_class_name;
	    
	    // Set module with URL request 
            $data['module_title'] = $this->module;

            // Set admin title page with module menu
            $data['page_title'] = $this->module_menu;

	    //$this->load->view('template/dashboard');
	    $this->load->view('template/admin/admin_template', $this->load->vars($data));
		
	}
}
