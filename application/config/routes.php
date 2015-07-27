<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	http://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There area two reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router what URI segments to use if those provided
| in the URL cannot be matched to a valid route.
|
*/

$route['default_controller'] = "home";
$route['download/(:num)'] = 'download';
$route['404_override'] 	= '';
$route['toc']			= 'terms';

/*
| -------------------------------------------------------------------------
| MODULE ADMIN PANEL ROUTING
| ------------------------------------------------------------------------- 
*/

$admin = (ADMIN) ? str_replace('/', '', ADMIN) : '';

$route[$admin]						= "admin/authenticate";
$route[$admin.'/authenticate']		= "admin/authenticate/index";
$route[$admin.'/authenticate/(:any)']	= "admin/authenticate/$1";

/***** Administrator module menu mandatory Routes [start] *****/
$route[$admin.'/dashboard/(:any)']	= 'admin/dashboard/$1';
$route[$admin.'/user/(:any)']		= 'admin/user/$1';
$route[$admin.'/usergroup/(:any)']	= 'admin/usergroup/$1';
$route[$admin.'/language/(:any)']	= 'admin/language/$1';
$route[$admin.'/modulelist/(:any)']	= 'admin/modulelist/$1';
$route[$admin.'/setting/(:any)']	= 'admin/setting/$1'; 
$route[$admin.'/serverlog/(:any)']	= 'admin/serverlog/$1';
/***** Administrator module menu mandatory [end] *****/

// Participant and Gallery Routes
$route[$admin.'/participant/(:any)']	= 'participant/$1';
$route[$admin.'/gallery/(:any)']	= 'participant/gallery/$1';

// Page and Page Menu Routes
$route[$admin.'/page/(:any)']		= 'page/$1';
$route[$admin.'/pagemenu/(:any)']	= 'page/pagemenu/$1';

// Region routes
$route[$admin.'/province/(:any)']	= 'region/province/$1';
$route[$admin.'/suburban/(:any)']	= 'region/suburban/$1';
$route[$admin.'/urbandistrict/(:any)']	= 'region/urbandistrict/$1';
$route[$admin.'/district/(:any)']	= 'region/district/$1';

/*** Admin Related Routes - end - **/


/* End of file routes.php */
/* Location: ./application/config/routes.php */