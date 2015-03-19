<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>
<!DOCTYPE html>
<!--[if lt IE 7 ]> <html class="no-js ie6 oldie" lang="en"> <![endif]--> 
<!--[if IE 7 ]> <html class="no-js ie7 oldie" lang="en"> <![endif]--> 
<!--[if IE 8 ]> <html class="no-js ie8 oldie" lang="en"> <![endif]--> 
<!--[if IE 9 ]> <html class="no-js ie9" lang="en"> <![endif]--> 
<!--[if (gte IE 10)|!(IE)]><!--> <html class="no-js" lang="en"> <!--<![endif]--> 
<head>
<meta charset="utf-8">
<title><?php echo $page_title; ?></title>
<!-- Bootstrap Core CSS -->
<link href="<?php echo base_url();?>assets/public/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="<?php echo base_url();?>assets/public/css/non-responsive.css" media="screen" rel="stylesheet">
<!--<link href="<?php echo base_url();?>assets/public/css/fancybox/jquery.fancybox.css" rel="stylesheet" type="text/css">-->
<link href="<?php echo base_url();?>assets/public/css/colorbox/colorbox.css" rel="stylesheet" type="text/css">
<!-- Fonts -->
<link href="<?php echo base_url();?>assets/public/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="<?php echo base_url();?>assets/public/css/animate.css" rel="stylesheet" />
<!-- Squad theme CSS -->
<link href="<?php echo base_url();?>assets/public/color/default.css" rel="stylesheet">
<link href="<?php echo base_url();?>assets/public/css/style.css" rel="stylesheet">
<!--[if IE]>
  <script src="<?=base_url();?>assets/public/js/html5shiv.js"></script>
  <script src="<?=base_url();?>assets/public/js/respond.min.js"></script>
<![endif]-->
<script type="text/javascript">var base_URL = '<?php echo base_url();?>';</script>
</head>
<body id="page-top" data-spy="scroll" data-target=".navbar">
<div id="fb-root"></div>
<script src="https://connect.facebook.net/en_US/all.js"></script>
<script>
	FB.init({
	appId : '1539327999688781',
	status : false, // check login status
	cookie : true, // enable cookies to allow the server to access the session
	xfbml : true // parse XFBML
	});
</script>	
<?php $this->load->view('template/public/header'); ?>
<div id="navigation">
	<?php $this->load->view('template/public/navigation'); ?>
</div>
<div class="container content">
	<div class="messageFlash">
		<?php $this->load->view('flashdata'); ?>
	</div>
	<div class="content-holder">
		<?php $this->load->view($main); ?>
	</div>
</div>
<?php $this->load->view('template/public/footer'); ?>
<!-- Core JavaScript Files -->
<script src="<?php echo base_url();?>assets/public/js/jquery.min.js"></script>
<script type="text/javascript" src="<?=base_url();?>assets/public/js/modernizr.js"></script>
<script type="text/javascript" src="<?=base_url();?>assets/public/js/selectivizr.min.js"></script>
<script src="<?php echo base_url();?>assets/public/js/jquery.easing.min.js"></script>
<script src="<?php echo base_url();?>assets/public/js/bootstrap.min.js"></script>
<!--<script src="<?php echo base_url();?>assets/public/js/jquery.fancybox.pack.js"></script>-->
<script src="<?php echo base_url();?>assets/public/js/jquery.colorbox-min.js"></script>
<script src="<?php echo base_url();?>assets/public/js/bootbox/bootbox.min.js"></script>
<script src="<?php echo base_url();?>assets/public/js/ie10-viewport-bug-workaround.js"></script>

<script type="text/javascript" src="<?=base_url();?>assets/public/js/jquery.ui.widget.min.js"></script>
<script type="text/javascript" src="<?=base_url();?>assets/public/js/jquery.iframe-transport.js"></script>
<script type="text/javascript" src="<?=base_url();?>assets/public/js/jquery.fileupload.js"></script>
<script type="text/javascript" src="<?=base_url();?>assets/public/js/jquery.fileupload-process.js"></script>
<script type="text/javascript" src="<?=base_url();?>assets/public/js/jquery.fileupload-validate.js"></script>
<script type="text/javascript" src="<?=base_url();?>assets/public/js/jquery.fileupload-ui.js"></script>
		
<script type="text/javascript" src="<?=base_url();?>assets/public/js/imagesloaded.pkgd.min.js"></script>
<!-- Custom Theme JavaScript -->
<script src="<?php echo base_url();?>assets/public/js/custom.js"></script>
</body>
</html>


