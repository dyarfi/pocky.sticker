<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Home extends CI_Controller {

    public function __construct() {
		parent::__construct();

		// Load facebook and headers
		$this->load->library('facebook');
		$this->load->model('user_model');

		$this->config->set_item('show_header', true);
		header('Access-Control-Allow-Origin: *');

		// Load config
		$this->load->config('config',true);

		// Load models
		$this->load->model('region/Provinces');
		$this->load->model('region/Suburbans');
		$this->load->model('region/Urbandistricts');
		$this->load->model('region/Districts');

		// Load Setting data
		$this->load->model('admin/Settings');

    } 

    public function index() {    
        
        $facebook = new Facebook();        
		$fb_id = $facebook->getUser();
		
		if ($fb_id) {            
            $user_fb = $facebook->api('/me?fields=name,picture,email');

            // Check database insert if empty
            if ($this->user_model->get_temp($fb_id)) {

	           	// Check already registered
	            $user = $this->user_model->check_fb_user($fb_id);

            } else {

                $fb_user = array();
                $fb_user['fb_name']		= @$user_fb['name'];
                $fb_user['fb_email']	= @$user_fb['email'];
                $fb_user['fb_id']		= @$user_fb['id'];
                $fb_user['fb_pic']		= @$user_fb['picture']['data']['url'];
                $fb_user['added'] 		= time();
                $fb_user['modified'] 	= time();
                $this->user_model->insert_temp($fb_user);           
                
            }
			
			// Check already registered
	        $user = $this->user_model->check_fb_user($fb_id);
            
            if ($user) {
                // Registered
                $signedRequest = $facebook->getSignedRequest();
                $sc_id = false;                
                if (isset($signedRequest['app_data'])) {
                    $sc_encoded = $signedRequest['app_data'];
                    $sc_id = $this->user_model->decode($sc_encoded);
                }
                $this->config->set_item('user_id', $user->part_id);
                if ($sc_id) {
                    redirect(base_url() . 'participant/single/' . $sc_encoded . '?data=' . $this->user_model->encode($user->part_id));
                } else {
                    //redirect(base_url() . 'participant?data=' . $this->user_model->encode($user->part_id));
                    $this->session->set_userdata('user_id',$this->user_model->encode($user->part_id));
                    redirect(base_url() . 'participant');
                }
            } else {
                // Not registered
                $this->show_home();
            }
        } else {
            // Request to get data
            $this->load->view('request');
        }
    }

	// Show home page
    public function show_home() {
        
        // Set page title 
        $data['page_title'] = 'Home';

        // Set main template
        $data['main'] = 'home';

        // Load admin template
        $this->load->view('template/public/site_template', $this->load->vars($data));
		
    }
	
    // User registration
    public function register () {
		
        $facebook		= new Facebook();

        $fb_id			= @$facebook->getUser();
		
		$fb_me			= (object) @$facebook->api('/me');
		
		$data['fb_me']	= @$fb_me;
		
		$user_fb_data 	= $this->user_model->get_temp($fb_id);

        $user_data 		= $this->session->userdata('user_id');

        $fb_user		= $this->user_model->check_fb_user($fb_id);

        if ($user_data) {
            $user_id = $this->user_model->decode($user_data);
            if ($user_id && $fb_user) {
                redirect(fb_url('gallery'));
                die();
            }
        }
        
        // Default data setup
        $fields	= array(
                        'name'          => '',
                        'gender'        => '',
                        'age'           => '',
                        'address'       => '',
                        'province'      => '',
                        'urbandistrict' => '',
                        'suburban'      => '',
                        'zipcode'       => '',
                        'phone'         => '',
                        'oshi_favorite' => '',
                        'id_number'     => '');

        $errors	= $fields;

        $this->form_validation->set_rules('name', 'Nama', 'trim|required|min_length[5]|max_length[28]|xss_clean');
        $this->form_validation->set_rules('gender', 'Jenis Kelamin','trim|required');		
        $this->form_validation->set_rules('age', 'Umur','trim|required|is_numeric');
        $this->form_validation->set_rules('phone', 'No. Telp','trim|is_numeric|xss_clean|max_length[25]');
        $this->form_validation->set_rules('address', 'Alamat','trim|required|xss_clean|max_length[25]');                
        $this->form_validation->set_rules('province', 'Propinsi','trim|required');	
        $this->form_validation->set_rules('urbandistrict', 'Kabupaten','trim|required');	
        $this->form_validation->set_rules('suburban', 'Kecamatan','trim|required');	
        $this->form_validation->set_rules('zipcode', 'Kode Pos','trim|required|is_numeric');	
        $this->form_validation->set_rules('oshi_favorite', 'Oshi Favorite','trim|required');	
        $this->form_validation->set_rules('id_number', 'No. Kartu Identitas','trim|required');	
		
        // Set gender data
        $data['genders']    = config_item('gender');

        // Set main template Data for province
        $data['provinces'] = $this->Provinces->getAllProvince();
            
        // Check if post is requested
	    if ($_SERVER['REQUEST_METHOD'] == 'POST') {			

		    // Validation form checks
		    if ($this->form_validation->run() === FALSE)
		    {

				// Set error fields
				$error = array();
				foreach(array_keys($fields) as $error) {
					$errors[$error] = form_error($error);
				}

		    }
		    else
		    {

                $part = array();
				/*
				 *  'name'          => '',
					'gender'        => '',
					'age'           => '',
					'address'       => '',
					'province'      => '',
					'urbandistrict' => '',
					'suburban'      => '',
					'zipcode'       => '',
					'phone'         => '',
					'oshi_favorite' => '',
					'id_number'     => ''
				 */
				
                $part['fb_id']			= $this->input->get_post('fb_id', true);
                $part['fb_pic_url']		= $this->input->get_post('picture_url', true);
				$part['email']			= $fb_me->email;
				$part['id_number']		= $this->input->get_post('id_number', true);
				$part['name']			= $this->input->get_post('name', true);
                $part['gender']			= $this->input->get_post('gender', true);
				$part['age']			= $this->input->get_post('age', true);
				$part['address']		= $this->input->get_post('address', true);
                $part['province']		= $this->input->get_post('province', true);
				$part['urbandistrict']	= $this->input->get_post('urbandistrict', true);
				$part['suburban']		= $this->input->get_post('suburban', true);
				$part['zipcode']		= $this->input->get_post('zipcode', true);
                $part['phone_number']	= $this->input->get_post('phone', true);
                $part['oshi_favorite']	= $this->input->get_post('oshi_favorite', true);
				
                $this->load->model('user_model');
				
                $user_id = $this->user_model->reg_participant($part);

                $this->config->set_item('user_id', $user_id);

                $user_id  = $this->session->set_userdata('user_id', $this->user_model->encode($user_id));

				if (!$this->input->is_ajax_request()) { 
					// Redirect if not ajax
					redirect(base_url('upload'));
				} else {
					// Send json message
					$result['result']	= 'OK';
					$result['label']	= base_url('upload');
				}

		    }

	    }

		// Set previous post merge to default
		$fields = array_merge($fields, array($this->input->post()));

		// Set site title page with module menu
		$data['page_title'] = 'Daftar';

		// Set main template
		$data['main']		= 'register';

		// Set error data to view
		$data['errors']		= $errors;

		// Post Fields
		$data['fields']		= $fields;

		// Logic Register via Ajax Request
		if ($this->input->is_ajax_request()) {

			// Send fields and errors data
			$result['fields'] = $fields;
			$result['errors'] = $errors;

			// Return data esult
			$data['json'] = $result;
			
			// Set json main template
			$this->load->view('json', $this->load->vars($result));
			exit;
		}

		// Set fb data
		$data['user_fb']	= $user_fb_data;

		// Set site title page with module menu
		$data['page_title'] = 'Daftar';

		// Set default template
		$data['main']		= 'register';

		// Set site template	
		$this->load->view('template/public/site_template', $this->load->vars($data));

	}
	
	// Gallery
	public function gallery() {
		// Load page pagination
	    $this->load->library('pagination');

	    $order = array('key' => 'image_created_date', 'value' => 'DESC');
	    $sort = $this->input->get('sort', true);
	    $data['sort'] = '';
	    if ($sort) {
			if ($sort == 'zota') {
				$order = array('key' => 'name', 'value' => 'DESC');
			} else if ($sort == 'atoz') {
				$order = array('key' => 'name', 'value' => 'ASC');
			} else if ($sort == 'vote') {
				$order = array('key' => '(select count(1) from liner_vote V where '
				. ' V.image_id = liner_image.image_id)', 'value' => 'DESC');
			}
		$data['sort'] = $sort;
	    }

	    $search = $this->input->get('search', true);
	    $data['search'] = '';
			if ($search != '') {
			$sort .='&search=' . $search;
			$data['search'] = $search;
	    }
	    $data['data'] = $this->input->get('data', true);

	    $config['base_url'] = base_url() . 'home/gallery';
	    //$config['total_rows'] = $this->user_model->count_gallery($search);
	    $config['per_page'] = 6;
	    $config['cur_tag_open'] = '<a href="#" class="active_paging">';
	    $config['cur_tag_close'] = '</a>';
	    $this->pagination->initialize($config);

	    $page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
	    $data["galleries"] = $this->user_model->get_gallery('', $page, $order, $search);
	    $links = $this->pagination->create_links($sort);
	    $data['links'] = $links; //str_replace("&nbsp;", '', $links);

	    // Set main template
	    $data['main'] = 'gallery';

	    // Set site title page with module menu
	    $data['page_title'] = 'Galeri';

	    // Load admin template
	    $this->load->view('template/public/site_template', $this->load->vars($data));
    }
    
    public function get_area ($param=null) {
		
		$ids = $this->input->post('id');
		
		if($param == 'province') {
            
            $result['result'] = $this->Urbandistricts->getByProvince($ids);
            $result['bindto'] = 'urbandistrict';
            $result['label'] = 'KABUPATEN';
            
		} else if($param == 'urbandistrict') {
            
            $result['result'] = $this->Suburbans->getByUrban($ids);
            $result['bindto'] = 'suburban';
            $result['label'] = 'KECAMATAN';
            
		} else if($param == 'suburban') {
            
            $result['result'] = $this->Districts->getBySubUrban($ids);
            
		}
				
		// Return data esult
		$data['json'] = $result;

		// Load data into view		
		$this->load->view('json', $this->load->vars($data));	
		
	}
}

/* End of file home.php */
/* Location: ./application/controllers/home.php */