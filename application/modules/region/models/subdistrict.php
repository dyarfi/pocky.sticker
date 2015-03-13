<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

// Model Class Object for SubDistrict
class SubDistrict extends CI_Model {
	
	// Table name for this model
	protected $table = 'sub_districts'; 

	public function __construct () {
		parent::__construct();

		$this->_model_vars	= array('id'				=> 0,
									'urban_district_id'	=> 0,
									'name'				=> '',
									'added'				=> 0,
									'modified'			=> 0);

		$this->db = $this->load->database('default', true);
		
		// Set default table
		$this->table = $this->db->dbprefix($this->table);
	}
	
	public function install () {
		$sql	= 'CREATE TABLE IF NOT EXISTS `'.$this->table.'` ('
				. '`id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, '
				. '`urban_district_id` INT(11) NULL, '
				. '`name` VARCHAR(255) NULL, '	
				. '`added` INT(11) NULL, '
				. '`modified` INT(11) NULL, '
				. 'INDEX (`name`) '
				. ') ENGINE=MYISAM';

		$this->db->query($sql);

		return $this->db->table_exists($this->table);
	}

}

