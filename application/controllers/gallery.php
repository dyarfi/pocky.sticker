<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class gallery extends CI_Controller {

	public function __construct() {
		parent::__construct();
		
		$this->load->model('user_model');
        $this->load->model('gallery_model');
		
	}
	
	public function index($image_id='') {				
				
		if ($this->input->is_ajax_request()) {        	
            echo json_encode(array('url'=>'?sort='.$this->input->get('sort')));
            exit;
        }

		$order = array('id' => 'DESC');
        $sort = $this->input->get('sort', true);
		$type = $this->input->get('type', true);
		$typec = array();
        
        if ($sort) {
            if ($sort == 'atoz') {
                $order = array('name' =>'ASC');
            } else if ($sort == 'ztoa') {
                $order = array('name' =>'DESC');
            } else if ($sort == 'scores') {
                $order = array('count' =>'DESC');
            }
        }
		
		if ($type) {
            if ($type == '16') {
                $typec = array('type' =>'16');
            } else if ($type == '2') {
                $typec = array('type' =>'2');
            } 
        }
		
		// Completed image activated from admin
		$status = 2;
        $sort 	= $this->input->get('sort');
        $search = $this->input->get('search');
		$types 	= $this->input->get('type');

        $url_search 	 = $search ? array('search'=>$search) : array();
        $url_sortby		 = $sort ? array('sort'=>$sort) : array(); 
		$url_typeby		 = $types ? array('type'=>$types) : array(); 
        $params			 = array_merge($url_search, $url_sortby);
		$params			 = $url_typeby ? array_merge($params, $url_typeby) : $params;	
        
        $this->load->library('pagination');
		
		$config['base_url'] = base_url('gallery/index/?').http_build_query($params);	
		$config['total_rows'] = $this->gallery_model->get_count_images($search,$typec,$status);
		$config["per_page"] = 9;
		$config['page_query_string'] = TRUE;

		$config['full_tag_open'] = '<div><ul class="pagination pagination-small pagination-centered">';
		$config['full_tag_close'] = '</ul></div>';
		$config['num_tag_open'] = '<li>';
		$config['num_tag_close'] = '</li>';
		$config['cur_tag_open'] = "<li class='disabled'><li class='active'><a href='#'>";
		$config['cur_tag_close'] = "<span class='sr-only'></span></a></li>";
		$config['next_tag_open'] = "<li>";
		$config['next_tagl_close'] = "</li>";
		$config['prev_tag_open'] = "<li>";
		$config['prev_tagl_close'] = "</li>";
		$config['first_tag_open'] = "<li>";
		$config['first_tagl_close'] = "</li>";
		$config['last_tag_open'] = "<li>";
		$config['last_tagl_close'] = "</li>";

		$get_data = $this->session->userdata('user_id');
		$user_id  = $this->user_model->decode($get_data);

		$this->pagination->initialize($config); 				
		$page = ($this->input->get('per_page')) ? $this->input->get('per_page') : 0;
		$links = $this->pagination->create_links();

		// User id
		$data['user_id']	= $user_id;

		// Set pagination links		
        $data['links'] 		= $links; 

        // Set gallery listing
		$data['gallery'] 	= $this->gallery_model->get_all_images($config["per_page"], $page, $order, $search, $typec, $status);

		// Set main template
		$data['main']		= 'gallery';
				
		// Set site title page with module menu
		$data['page_title'] = 'Gallery';
		
		// Load admin template
		$this->load->view('template/public/site_template', $this->load->vars($data));
		
	}
	
	public function single ($type='',$image_id='',$revisit=''){
		
		// Get participant data
		$get_data = $this->session->userdata('user_id');
		$user_id  = $this->user_model->decode($get_data);
		
		// Completed data
		$data['user_id']	= $user_id;
		
		// Completed data
		$data['completed']	= false;
		
		// Completed upload
		if ($revisit == true) {
			$data['completed'] = true;
		}
		
		// Type image
		$data['type']		= $type;
		
		// Image id
		$data['image']		= $this->gallery_model->get_image($image_id);
		
		// Set main template
		$data['main']		= 'gallery_single';
				
		// Set site title page with module menu
		$data['page_title'] = 'Gallery';
		
		// Load admin template
		$this->load->view('template/public/site_template', $this->load->vars($data));
		
	}
}

/* End of file user.php */
/* Location: ./application/controllers/user.php */