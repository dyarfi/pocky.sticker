<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>
<script type="text/javascript">
      window.onload = function() {
        FB.Canvas.setSize({ width: 810, height: 700 });
    }
</script>
<div class="center-block">
	<div class="mekanisme">
		<div class="title-page"><img src="<?php echo base_url();?>assets/public/img//title-unggah-<?php echo $type;?>.png" alt="title mekanisme" class=""></div>
			<div class="up-16-img">
			  <img src="<?php echo base_url();?>assets/public/img/<?php echo $type;?>-sticker.png" alt="<?php echo $type;?>-sticker" class="">
			  <p>
				Unggah koleksi <?php echo $type;?> stiker reguler JKT48 Pocky kamu di sini.<br>
				Pastikan koleksi stiker kamu sudah lengkap, dan berbeda satu sama lainnya.
			  </p>
			  <img src="<?php echo base_url();?>assets/public/img/def-up-sticker.png" alt="def-up-sticker" class="">
			</div>
		<div class="klik font-pocky"><a href=>Unggah</a></div>
	</div>
</div>

<?php /* echo form_open_multipart(base_url('upload/selfie?data='.$this->input->get('data', TRUE)), array('id'=>'fileUploadForm'));?>
<div class="listcen">
	<div class="cont">
		<div id="sizeBox">
			
		</div>
		<p class="text-center posit2">
			
			<div class="img_holder_xhr text-center">				
				<div class="img-thumbnail">
					<a class="colorbox" href="<?=base_url();?>assets/public/img/unggah.jpg">
						<img src="<?=base_url();?>assets/public/img/unggah.jpg" alt="" />
					</a>	
				</div>
			</div>
			
		</p>
		<div class="text-center">
			<!-- The global progress bar -->
			<div id="progress" class="progress" style="display:block">
				<div class="progress-bar progress-bar-danger"></div>
			</div>
			
			<div class="clear topBotDiv10"></div>

			<div class="center-block">
				<div class="fileUpload btn btn-primary btn-md center-block">
					<span>Browse</span>
					<input class="upload" type="file" id="fileupload" name="fileupload" data-url="<?=base_url('upload/image');?>">
				</div>
			</div>
			<input type="hidden" name="image_temp" value=""> 
		</div>
		<div>
		<h3 class="text-center popupload">Tunjukkan Ekspresi kamu dari serunya pertandingan<br />
		Persija VS Gamba Osaka di stadion Gelora Bung Karno - Jakarta.<br />
		Setiap peserta boleh mengirimkan lebih dari 1 (satu) foto.</h3>
		</div>	
	</div>
</div>
</div>
<div class="atas">
	<div class="text-center button-submit" style="display:none">
		<button class="btn btn-primary btn-lg" role="button">KIRIM</button>
	</div>
</div>
<?php echo form_close(); */?>
