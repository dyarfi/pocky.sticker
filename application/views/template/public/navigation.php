<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>
<!-- Fixed navbar -->
<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
	<div id="navbar" class="navmain">
	  <ul class="nav navbar-nav">
		<li class="<?php echo ($this->uri->segment(1)=='' || $this->uri->segment(1)=='home') ? 'active' :'';?>"><a href="<?php echo base_url();?>">Ikut Kompetisi</a></li>
		<li class="<?php echo ($this->uri->segment(1)=='info') ? 'active' :'';?>"><a href="<?php echo base_url('info');?>">Informasi Hadiah</a></li>
		<li class="<?php echo ($this->uri->segment(1)=='mechanism') ? 'active' :'';?>"><a href="<?php echo base_url('mechanism');?>">Mekanisme</a></li>
		<li class="<?php echo ($this->uri->segment(1)=='gallery' || $this->uri->segment(1)=='upload') ? 'active' :'';?>"><a href="<?php echo base_url('gallery');?>">Galeri</a></li>
	  </ul>
	</div><!--/.nav-collapse -->
  </div>
</nav>