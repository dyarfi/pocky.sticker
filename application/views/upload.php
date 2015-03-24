<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>
<script type="text/javascript">
window.onload = function() {
	FB.Canvas.setSize({ width: 810, height: 796 });
}
</script>

<div class="center-block">
	<div class="sticker-upload-landing">
		<div class="title-page"><img src="<?php echo base_url('assets/public/img/title-unggah.png');?>" alt="title daftar" class="title"></div>
		<div class="id-uploadsticker">
			  <p>
				Pilih jumlah stiker yang kamu miliki sebelum mengunggah.<br>
				Pastikan koleksi stiker dalam foto kamu sudah lengkap dan tidak sama satu sama lain,<br>
				karena kamu hanya punya satu kali kesempatan untuk mengunggah koleksi stiker reguler<br>
				dan stiker spesial JKT48 dari Pocky.
			  </p>
				<?php 
					// Set both link for 16 and 2 stickers
					$type2_link = '<div class="klik-unggah font-pocky pull-left unggah2">'
									.'<a class="click" rel="sticker2" href="javascript:;">2 sticker special</a></div>';
									
					$type16_link = '<div class="klik-unggah font-pocky pull-right unggah16">'
									.'<a class="click" rel="sticker16" href="javascript:;">16 sticker special</a></div>';
					
					// Check if user already submit images
					if (!empty($images['2'])) {
						$type2_link = '<div class="klik-unggah font-pocky pull-left unggah2">'
						.'<a class="colobox" href="'.base_url('gallery/single/'.$images['2']->type.'/'.$images['2']->id).'/true">2 sticker special</a></div>';
					}
					if (!empty($images['16'])) {
						$type16_link = '<div class="klik-unggah font-pocky pull-right unggah16">'
						.'<a class="colobox" href="'.base_url('gallery/single/'.$images['16']->type.'/'.$images['16']->id).'/true">16 sticker special</a></div>';
					}
				?>
			  <div class="col-md-6 col-xs-6">
				<img src="<?php echo base_url();?>assets/public/img/16-sticker.png" alt="16 sticker" class="pull-right">
				<?php echo $type16_link;?>
			  </div>
			  <div class="col-md-6 col-xs-6">
				<img src="<?php echo base_url();?>assets/public/img/2-sticker.png" alt="2 sticker" class="pull-left">
				<?php echo $type2_link;?>
			  </div>
		</div>
	</div>
</div>


<div class="mekanisme">
	<div class="sticker2 sticker-upload">
		<div class="title-page">
			<a href="javascript:;" class="text-success">
				<img src="<?php echo base_url();?>assets/public/img/title-unggah-2.png" alt="title mekanisme" class="">
			</a>
		</div>
		<?php echo form_open_multipart(base_url('upload/sticker?data='.$this->session->userdata('user_id')), array('id'=>'fileUploadForm2'));?>
			<input type="hidden" name="image_type" value="2">
			<div class="up-16-img">
				<img src="<?php echo base_url();?>assets/public/img/2-sticker.png" alt="2-sticker" class="">
				<p>
				  Unggah koleksi 2 stiker reguler JKT48 Pocky kamu di sini.<br>
				  Pastikan koleksi stiker kamu sudah lengkap, dan berbeda satu sama lainnya.
				</p>
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
				<div class="center-block">
					<div class="fileUpload btn btn-warning btn-md klik font-pocky">
						<span>Browse</span>
						<input class="upload" type="file" id="fileupload" name="fileupload" data-url="<?=base_url('upload/image');?>">
					</div>
				</div>
				<input type="hidden" name="image_temp" value="">
			</div>
			<div class="text-center button-submit" style="display: none">
			<button type="submit" class="klik font-pocky">Unggah</button></div>
		<?php echo form_close(); ?>
	</div>
</div>

<div class="mekanisme">
	<div class="sticker16 sticker-upload">
		<div class="title-page">
			<a href="javascript:;" class="text-success">
				<img src="<?php echo base_url();?>assets/public/img/title-unggah-16.png" alt="title mekanisme" class="">
			</a>
		</div>
		<?php echo form_open_multipart(base_url('upload/sticker?data='.$this->session->userdata('user_id')), array('id'=>'fileUploadForm16'));?>
			<input type="hidden" name="image_type" value="16">
			<div class="up-16-img">
			  <img src="<?php echo base_url();?>assets/public/img/16-sticker.png" alt="16-sticker" class="">
			  <p>
				Unggah koleksi 16 stiker reguler JKT48 Pocky kamu di sini.<br>
				Pastikan koleksi stiker kamu sudah lengkap, dan berbeda satu sama lainnya.
			  </p>
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
							<div id="progress" class="progress" style="display:none">
								<div class="progress-bar progress-bar-danger"></div>
							</div>
						</p>
					</div>
				</div>
				<div class="center-block">
					<div class="fileUpload btn btn-warning btn-md klik font-pocky">
						<span>Browse</span>
						<input class="upload" type="file" id="fileupload16" name="fileupload" data-url="<?=base_url('upload/image');?>">
					</div>
				</div>
				<input type="hidden" name="image_temp" value="">
			</div>
		<div class="text-center button-submit" style="display: none"><button type="submit" class="klik font-pocky">Unggah</button></div>
		<?php echo form_close(); ?>
		</div>
	</div>	
</div>
