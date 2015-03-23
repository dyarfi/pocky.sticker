<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>
<script type="text/javascript">
window.onload = function() {
	FB.Canvas.setSize({ width: 810, height: 1147 });
}
</script>
<div class="content-img">
	<div class="logo">
          <img src="img/logo.png" alt="logo" class="logo">
        </div>
	<div class="tagline font-pocky">
	  <img src="<?php echo base_url();?>assets/public/img/tagline.png" alt="tagline" class="tagline">
	</div>
	<div class="prize"><img src="<?php echo base_url();?>assets/public/img/prize.png" class="ctr-img" alt="prize pocky"></div>
	<div class="ikutan"><img src="<?php echo base_url();?>assets/public/img/ikutans.png" class="ctr-img" alt="ikutan pocky"></div>
	<div class="klik font-pocky"><a href="<?php echo base_url('home/register');?>">IKUTAN SEKARANG</a></div>
</div>