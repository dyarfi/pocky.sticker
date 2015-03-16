<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Info extends CI_Controller {

	public function __construct() {
		parent::__construct();
		
	}
	
	public function index() {
		
		// Set main template
		$data['main'] = 'info';
				
		// Set site title page with module menu
		$data['page_title'] = 'Informasi Hadiah';
		
		// Load admin template
		$this->load->view('template/public/site_template', $this->load->vars($data));
		
	}
}

/* End of file user.php */
/* Location: ./application/controllers/user.php */