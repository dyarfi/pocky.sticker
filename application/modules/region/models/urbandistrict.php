<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

// Model Class Object for UrbanDistrict
class UrbanDistrict extends CI_Model {
	
	// Table name for this model
	protected $table = 'urban_districts'; 

	public function __construct () {
		parent::__construct();

		$this->_model_vars	= array('id'				=> 0,
									'province_id'		=> 0,
									'name'				=> '',			
									'subject'			=> '',
									'status'			=> '',
									'added'				=> 0,
									'modified'			=> 0);

		$this->db = $this->load->database('default', true);
		
		// Set default table
		$this->table = $this->db->dbprefix($this->table);
	}

	public static function instance () {
		if (self::$_instance === NULL)
			self::$_instance	= new self();

		return self::$_instance;
	}

	public function install () {
		$sql	= 'CREATE TABLE IF NOT EXISTS `'.$this->table.'` ('
				. '`id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, '
				. '`province_id` INT(11) NULL, '
				. '`name` VARCHAR(255) NULL, '	
				. '`added` INT(11) NULL, '
				. '`modified` INT(11) NULL, '
				. 'INDEX (`name`) '
				. ') ENGINE=MYISAM';

		$this->db->query($sql);

		return $this->db->table_exists($this->table);
	}

}

