<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Gallery extends Admin_Controller {

    public function __construct() {
            parent::__construct();

            // Load Participant model
            $this->load->model('participant/Participants');

            // Load Gallery model
            //$this->load->model('participant/Gallery');

            // Load Grocery CRUD
            $this->load->library('grocery_CRUD');
      
    }
	
    public function index() {
        try {
			// Set our Grocery CRUD
            $crud = new grocery_CRUD();
            // Set tables
            $crud->set_table('tbl_participant_images');
            // Set CRUD subject
            $crud->set_subject('Gallery');                            
            // Set table relation
            //$crud->set_relation('menu_id','tbl_page_menus','name');
            // Set column
            //$crud->columns('subject','name','menu_id','synopsis','text','status','added','modified');			
	    // The fields that user will see on add and edit form
	    //$crud->fields('subject','name','menu_id','synopsis','text','publish_date','unpublish_date','status','added','modified');
            // Set column display 
            //$crud->display_as('menu_id','Menu');
	    // Changes the default field type
	    //$crud->field_type('added', 'hidden');
	    //$crud->field_type('modified', 'hidden');
	    // This callback escapes the default auto field output of the field name at the add form
	    //$crud->callback_add_field('added',array($this,'_callback_time_added'));
	    // This callback escapes the default auto field output of the field name at the edit form
	    //$crud->callback_edit_field('modified',array($this,'_callback_time_modified'));
	    // This callback escapes the default auto field output of the field name at the add/edit form. 
	    // $crud->callback_field('status',array($this,'_callback_dropdown'));
	    // This callback escapes the default auto column output of the field name at the add form
	    $crud->callback_column('added',array($this,'_callback_time'));
	    $crud->callback_column('modified',array($this,'_callback_time'));  
	    // Sets the required fields of add and edit fields
	    //$crud->required_fields('subject','name','text','status'); 
            // Set upload field
            // $crud->set_field_upload('file_name','uploads/pages');
            $crud->unset_add();
	    $crud->unset_edit();
	    $crud->unset_delete();
	    $this->load($crud, 'gallery');
        } catch (Exception $e) {
            show_error($e->getMessage() . ' --- ' . $e->getTraceAsString());
        }
    }
    
    public function _callback_time ($value, $row) {
	return empty($value) ? '-' : date('D, d-M-Y',$value);
    }
    
    public function _callback_time_added ($value, $row) {
	$time = time();
	return '<input type="hidden" maxlength="50" value="'.$time.'" name="added">';
    }
    
    public function _callback_time_modified ($value, $row) {
	$time = time();
	return '<input type="hidden" maxlength="50" value="'.$time.'" name="modified">';
    }
    
    public function _callback_total_image($value, $row) {
        //$total = $this->user_model->total_image_submitted($row->participant_id);
        //return $total;
    }
    
    private function load($crud, $nav) {
        $output = $crud->render();
        $output->nav = $nav;
        if ($crud->getState() == 'list') {
            // Set Gallery Title 
            $output->page_title = 'Gallery Listings';
            // Set Main Template
            $output->main       = 'template/admin/metronix';
            // Set Primary Template
            $this->load->view('template/admin/admin_template.php', $output);
        } else {
            $this->load->view('template/admin/popup.php', $output);
        }    
    }
}
