<?php defined('SYSPATH') OR die('No direct access allowed.');

$config['models']			= array('District',
									'Province',
									'SubDistrict',
									'UrbanDistrict');

$config['upload_max_size']	= '2M';
$config['upload_path']		= DOCROOT.'uploads/regions/';
$config['upload_url']		= 'uploads/regions/';

$config['regionfile_upload_max_size']	= '2M';
$config['regionfile_upload_path']		= DOCROOT.'uploads/region_files/';
$config['regionfile_upload_url']		= 'uploads/region_files/';

$config['category_upload_max_size']		= '2M';
$config['category_upload_path']			= DOCROOT.'uploads/regioncategory_files/';
$config['category_upload_url']			= 'uploads/regioncategory_files/';

$config['readable_mime']	= array('image/gif',
									'image/jpg',
									'image/jpeg',
									'image/png',
									'video/x-flv',
									'video/flv',
									'audio/mpeg');

$config['mime_icon']		= array('image/gif'		=> 'picture.png',
									'image/jpg'		=> 'picture.png',
									'image/jpeg'	=> 'picture.png',
									'image/png'		=> 'picture.png',
									'video/x-flv'	=> 'film.png',
									'video/flv'		=> 'film.png',
									'audio/mpeg'	=> 'sound.png');

$config['regionfile_fields']	= array('show_album'				=> TRUE,
										'show_allow_comment'		=> FALSE,
										'show_tags'					=> FALSE,
										'show_title'				=> TRUE,
										'show_description'			=> TRUE,
										'show_upload' 				=> TRUE,
										'show_order'				=> TRUE,
										'show_filename' 			=> TRUE
																	);

$config['region_fields']		= array('show_owner'	=> FALSE,
										'show_order'	=> FALSE,
										'show_description' => TRUE,
										'show_category' => TRUE,
										'show_upload'	=> TRUE									
										);

/**
 * Check gallery uploads field just have one field
 * and remove the other field if uploads field more than one
 ***/

//if (count($config['gallery_file_fields']['uploads']) > 1) {
	//$keys	= array_keys($config['gallery_file_fields']['uploads']);
	//$config['gallery_file_fields']['uploads']	= array($keys[0]	=> $config['gallery_file_fields']['uploads'][$keys[0]]);
//}

$config['module_menu']		= array(
									'regionprovince/index'		=> 'Province Listings',
									'regionurbandistrict/index'	=> 'Urban District Listings',			
									'regionsubdistrict/index'	=> 'Sub District Listings',	
									'regiondistrict/index'		=> 'District Listings',
									);

$config['module_function']	= array(
	
									'regionurbandistrict/add'		=> 'Add New Urban District',
									'regionurbandistrict/view'		=> 'View Urban District Details',
									'regionurbandistrict/edit'		=> 'Edit Urban District Details',
									'regionurbandistrict/delete'	=> 'Delete Urban District',
									'regionurbandistrict/change'	=> 'Update Urban District Status',
	
									'regionprovince/add'		=> 'Add New Province',
									'regionprovince/view'		=> 'View Province Details',
									'regionprovince/edit'		=> 'Edit Province Details',
									'regionprovince/delete'		=> 'Delete Province',
									'regionprovince/change'		=> 'Update Province Status',
	
									'regiondistrict/add'		=> 'Add New District',
									'regiondistrict/view'		=> 'View District Details',
									'regiondistrict/edit'		=> 'Edit District Details',
									'regiondistrict/delete'		=> 'Delete District',
									'regiondistrict/change'		=> 'Update District Status',
	
									);
									
return array_merge_recursive (
	$config
);									
