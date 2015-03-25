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
		
		// Oshi Favorite data
		$this->oshis = array(
			'Melody Nurramdhani Laksani',
			'Ayana Shahab',
			'Haruka Nakagawa',
			'Nabillah Ratna Ayu Azallia',
			'Frieska Anastasia Laksani',
			'Rezky Wiranti Dhike',
			'Cindy Yuvia',
			'Shinta Naomi',
			'Shania Junianatha',
			'Jessica Veranda',
			'Devi Kinal Putri',
			'Thalia Ivanka Elizabeth',
			'Rina CHIKANO',
			'Shinka Juliani',
			'Jennifer Hanna',
			'Andela Yuwono'
		);
		
		//print_r($this->session->userdata);
		
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
                    redirect(base_url() . 'upload/' . $sc_encoded . '?data=' . $this->user_model->encode($user->part_id));
                } else {
                    //redirect(base_url() . 'participant?data=' . $this->user_model->encode($user->part_id));
                    $this->session->set_userdata('user_id',$this->user_model->encode($user->part_id));
                    //redirect(base_url() . 'participant');
					//redirect(base_url() . 'gallery');
					 $this->show_home();
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
		
		$result			= array();
	
        if ($user_data) {
            $user_id = $this->user_model->decode($user_data);
            if ($user_id && $fb_user) {
                redirect(site_url('upload'));
                die();
            }
        }
        
        // Default data setup
        $fields	= array(
                        'name'          => '',
                        'email'        	=> '',
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

        $this->form_validation->set_rules('name', 'Nama', 'trim|required|min_length[5]|max_length[32]|xss_clean');
		$this->form_validation->set_rules('email', 'Email','trim|valid_email|required|max_length[55]|xss_clean');
        $this->form_validation->set_rules('gender', 'Jenis Kelamin','trim|required');		
        $this->form_validation->set_rules('age', 'Umur','trim|required|is_numeric');
        $this->form_validation->set_rules('phone', 'No. Telp','trim|is_numeric|xss_clean|max_length[25]');
        $this->form_validation->set_rules('address', 'Alamat','trim|required|xss_clean|max_length[250]');                
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
		
		// Set Oshis data
		$data['oshis']	= $this->oshis;
            
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

				// Set previous post merge to default
				$fields = array_merge($fields, $this->input->post());
				
				if ($this->input->is_ajax_request()) {

					// Send fields and errors data
					$result['fields'] = $fields;
					$result['errors'] = $errors;

				}

		    } else {

                $part = array();
				
                $part['fb_id']			= $user_fb_data->fb_id;
                $part['fb_pic_url']		= $user_fb_data->fb_pic;
				$part['email']			= $this->input->get_post('email', true);
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

				$this->session->set_userdata('user_id', $this->user_model->encode($user_id));

				if ($this->input->is_ajax_request()) {
					// Send json message
					$result['result']	= 'OK';
					$result['label']	= base_url('upload');
				} else {					
					// Redirect if not ajax
					redirect(base_url('upload'));
				}
		    }

	    }
		
		// Set error data to view
		$data['errors'] = $errors;

		// Post Fields
		$data['fields']	= $fields;
		
		// Logic Register via Ajax Request
		if ($this->input->is_ajax_request()) {
			
			// Return data esult
			$data['json'] = $result;
			
			// Set json main template
			//$this->load->view('json', $this->load->vars($data));
			echo json_encode($result);
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
	
	// Upload id card images
	public function upload_cid() {
		
		// Set main template
		$data['main'] = 'upload_cid';
				
		// Set site title page with module menu
		$data['page_title'] = 'Upload : KTP / SIM / KARTU PELAJAR';
		
		// Load admin template
		$this->load->view('template/public/site_template', $this->load->vars($data));
		
	}
	
	public function upload() {

		// Check if the request via AJAX
		if (empty($_POST)) {
			exit('No direct script access allowed');		
		}	
		
		$get_data 	 = $this->session->userdata('user_id');
		
		$part_id	 = $this->user_model->decode($get_data);
		
		$participant = $this->user_model->get_participant($part_id);
		
        if (!$get_data && $participant->file_name =='') {
            redirect(base_url('home/register'));
        } else {

			$facebook = new Facebook();        
			$fb_id = $facebook->getUser();

			$config = array(
				array('field' => 'image_name', 
	                  'label' => 'File', 
	                  'rules' => 'trim|required|xss_clean|max_length[35]'));
			
			// Set rules to form validation
			$this->form_validation->set_rules($config);
			
			// Run validation for checking
			if ($this->form_validation->run() === FALSE) {

				$items['file_name'] = $this->input->post('image_temp');
				$items['part_id'] 	= $part_id;

				$image_id 			= $this->user_model->update_image_cid($items);
			
				if ($image_id) redirect(base_url() . 'upload');

			} else {

			}
		}
								
	}
	
	public function image() {
			
		// Check if the request via AJAX
		if (!$this->input->is_ajax_request()) {
			exit('No direct script access allowed');		
		}	
		
		$user_data 		= $this->session->userdata('user_id');
		
		$user_id 		= $this->user_model->decode($user_data);
		
		// Define initialize result
		$result['result'] = '';
		
			// Set validation config
			$config = array(
				array('field' => 'image_name', 
                      'label' => 'File', 
                      'rules' => 'trim|required|xss_clean|max_length[35]'));

			// Set rules to form validation
			$this->form_validation->set_rules($config);
			
			// Run validation for checking
			if ($this->form_validation->run() === FALSE) {
								
					if($_FILES) {					
		
						usleep(2000000);
						
						$file_hash	= md5(time() + rand(100, 999));
						$file_data	= pathinfo($_FILES['fileupload']['name']);
											
						$file_element_name = 'fileupload';
						
						$config['upload_path'] = './uploads/users/';
						$config['allowed_types'] = 'gif|jpg|png|doc|txt';
						$config['max_size'] = 1024 * 8;
						$config['encrypt_name'] = FALSE;

						$this->load->library('upload', $config);
						
						if (!$this->upload->do_upload($file_element_name))
						{
						  $status = 'error!';
						  $msg = $this->upload->display_errors('', '');
						}
						else
						{
							
							$data = $this->upload->data();
							$image_path = $data['full_path'];
							
							if(file_exists($image_path))
							{
								$status = "success";
								$msg = "File successfully uploaded";
							}
							else
							{
							 $status = "error";
							 $msg = "Something went wrong when saving the file, please try again.";
							}
						}
												
						$file_name	= self::_upload_to($_FILES['fileupload'], $file_hash.'.'.$file_data['extension'], './uploads/users/', 0777);
											
						$config['source_image']	= $file_name;
						$config['create_thumb'] = TRUE;
						$config['maintain_ratio'] = TRUE;
						$config['width']	= 264;
						$config['height']	= 220;

						$this->load->library('image_lib', $config); 

						$this->image_lib->resize();
						
						$file_data	= pathinfo($file_name);
						$file_mime	= $_FILES['fileupload']['type'];
															
						$thumb = $file_data['filename'].'_thumb.'.$file_data['extension'];
						$result['files'][] = array(
												'name'	=>$file_data['basename'],
												'size'	=>$_FILES['fileupload']['size'],
												'type'	=>$_FILES['fileupload']['type'],
												'url'	=> 'uploads/users/'. $file_data['basename'],
												//'file_id'		=> $file_id,
												'thumbnailUrl'	=>'uploads/users/'. $thumb,
												//'deleteUrl'		=>URL::site(ADMIN).'/news/filedelete/'.$file_id,
												'deleteType'	=>'DELETE'
												);						
					}																
				
			} else {
				
				// Unset captcha post
				unset($_POST['captcha']); 				
					
				// Send message if account not found					
				$result['result']['code'] = 0;
				$result['result']['text'] = 'Image not Found';
			}

		// Return data esult
		$data['json'] = $result;
		
		// Load data into view		
		$this->load->view('json', $this->load->vars($data));	
		
	}
	
	// Check if upload dir exists or create one and upload file if true and return file name
	public static function _upload_to ($file, $name, $upload_path='', $file_perm = '') {
		if (!empty($upload_path)) {
			
			if ( ! is_dir($upload_path) OR ! is_writable(realpath($upload_path))) {	
				mkdir($upload_path);
			}

			// Make the filename into a complete path			
			$filename = realpath($upload_path).DIRECTORY_SEPARATOR.$file['name'];
			
			if (move_uploaded_file($file['tmp_name'], $filename))
			{
				if ($file_perm !== FALSE)
				{
					// Set permissions on filename
					chmod($filename, $file_perm);
				}

				// Return new file path
				return $filename;
			}
			
		} else {
			return false;
		}
		
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