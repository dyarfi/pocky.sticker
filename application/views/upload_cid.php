<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>
<script type="text/javascript">
window.onload = function() {
	FB.Canvas.setSize({ width: 810, height: 796 });
}
</script>
<div class="clearfix margintop-50"></div>
<div class="mekanisme"> 
	<div class="center-block">
		<div class="sticker-upload-landing">
			<div class="title-page"><img src="<?php echo base_url('assets/public/img/title-mendaftar.png');?>" alt="title daftar" class="title"></div>
			<?php echo form_open_multipart(base_url('home/upload?data='.$this->session->userdata('user_id')), array('id'=>'fileUploadForm'));?>
			<p class="text-center">Silakan unggah foto kartu identitasmu.</p>
			<div class="img_holder_xhr text-center">
				<div class="img-thumbnail">
					<a class="colorbox" href="<?php echo base_url();?>assets/public/img/def-up-sticker.png">
						<img src="<?php echo base_url();?>assets/public/img/def-up-sticker.png" alt="def-up-sticker" class="">
					</a>
				</div>
			</div>
			<div class="text-center">
				<div class="container">
					<p>
					<!-- The global progress bar -->
					<div id="progress" class="progress" style="display:none;">
						<div class="progress-bar progress-bar-danger"></div>
					</div>
					</p>
				</div>
			</div>
			<div class="text-center">
				<div class="fileUpload btn btn-warning btn-md klik font-pocky">
					<span>Browse</span>
					<input class="upload" type="file" id="fileupload" name="fileupload" data-url="<?=base_url('home/image');?>">
				</div>
			</div>
			<input type="hidden" name="image_temp" value="">
			<div class="id-uploadsticker">
				<div class="text-center button-submit" style="display: none">
					<button type="submit" class="klik font-pocky">Unggah</button>
				</div>
			</div>
			<?php echo form_close(); ?>
		</div>
	</div>
</div>
<div class="clearfix marginbot-50 margintop-50"></div>