<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

// Model Class Object for Configurations
class Configurations Extends CI_Model {
	
	protected $table = 'configurations';
	
	public function __construct(){
	    // Call the Model constructor
	    parent::__construct();		

	    // Set default db
	    $this->db = $this->load->database('default', true);		
	    // Set default table
	    $this->table = $this->db->dbprefix($this->table);		
	}
	
	public function install () {
	    $insert_data		= FALSE;

	    if (!$this->db->table_exists($this->table)) {
		    $insert_data	= TRUE;

		    $sql	= 'CREATE TABLE IF NOT EXISTS `'.$this->table.'` ('
				    . '`parameter` VARCHAR(150) NOT NULL DEFAULT \'\', '
				    . '`value` VARCHAR(150) NOT NULL DEFAULT \'\', '
				    . 'PRIMARY KEY (`parameter`, `value`) '
				    . ') ENGINE=MYISAM';

		    $this->db->query($sql);
	    }

	    if ($insert_data) {
		$sql	= 'INSERT INTO `'.$this->table.'` '
				. '(`parameter`, `value`) '
				. 'VALUES '
				. '(\'install\', \'0\'),'
				. '(\'maintenance\', \'0\'),'
				. '(\'environment\', \'0\'),'
				. '(\'theme\', \'0\')';

		if ($sql) $this->db->query($sql);
	    }

	    return $this->db->table_exists($this->table);
	}

	public function getConfig($parameter = null){
		if(!empty($parameter)){
			$data = array();
			$options = array('parameter' => $parameter);
			$Q = $this->db->get_where($this->table,$options,1);
			if ($Q->num_rows() > 0){
				foreach ($Q->result_object() as $row)
				$data = $row;
			}
			$Q->free_result();
			return $data;
		}
	}
	
	public function getAllConfig(){
		$data = array();
		$Q = $this->db->get($this->table);
			if ($Q->num_rows() > 0){
				//foreach ($Q->result_object() as $row){
					//$data[] = $row;
				//}
				$data = $Q->result_object();
			}
		$Q->free_result();
		return $data;
	}
	
	public function setConfig($object=null){
		
		// Set Configuration data
		$data = array(			
					'parameter' => $object['parameter'],
					'value' => $object['value']
				);
		
		// Insert Configuration data
		$this->db->insert($this->table, $data);
		
		// Return last insert id primary
		$insert_id = $this->db->insert_id();					
			
		// Return last insert id primary
		return $insert_id;
		
	}
	
	public function updateConfig($object=null){
		
		// Set Configuration data
		$data = array(			
						'parameter' => $object['parameter'],
						'value' => $object['value']
					);
		
		// Update Configuration data             
		$this->db->where('parameter', $object['parameter']);      

		// Return last insert id primary
		$update = $this->db->update($this->table, $data);					
			
		// Return last insert id primary
		return $update;
		
	}
	
	public function deleteConfig($parameter=null) {
		
		// Check Configuration id
		$this->db->where('parameter', $parameter);
		
		// Delete Configuration form database
		return $this->db->delete($this->table);
		
	}	
}