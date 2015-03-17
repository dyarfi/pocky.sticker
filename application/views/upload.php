<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>
<script type="text/javascript">
      window.onload = function() {
        FB.Canvas.setSize({ width: 810, height: 700 });
    }
</script>
<div class="center-block">
	<div class="upload-sticker">
		<div class="title-page"><img src="<?php echo base_url();?>assets/public/img/title-unggah.png" alt="title daftar" class="title"></div>
		<div class="id-uploadsticker">
		  <p>
			Pilih jumlah stiker yang kamu miliki sebelum mengunggah. 
		  </p>
		  <p>
			Pastikan koleksi stiker dalam foto kamu sudah lengkap dan tidak sama satu sama lain, karena kamu hanya punya satu kali kesempatan untuk mengunggah koleksi stiker reguler dan stiker spesial JKT48 dari Pocky.
		  </p>
		  <div class="col-md-6 col-xs-6">
			<img src="<?php echo base_url();?>assets/public/img/16-sticker.png" alt="16 sticker" class="pull-right">
			<div class="klik-unggah font-pocky pull-right unggah16"><a href="<?php echo base_url('upload/type/16');?>">16 sticker special</a></div>
		  </div>
		  <div class="col-md-6 col-xs-6">
			<img src="<?php echo base_url();?>assets/public/img/2-sticker.png" alt="2 sticker" class="pull-left">
			<div class="klik-unggah font-pocky pull-left unggah2"><a href="<?php echo base_url('upload/type/2');?>">2 sticker special</a></div>
		  </div>
		</div>
	</div>
</div>

<div class="mekanisme hidden 2-sticker">
	<div class="title-page"><img src="<?php echo base_url();?>assets/public/img/title-unggah-2.png" alt="title mekanisme" class=""></div>
		<div class="up-16-img">
		  <img src="<?php echo base_url();?>assets/public/img/2-sticker.png" alt="16-sticker" class="">
		  <p>
			Unggah koleksi 2 stiker reguler JKT48 Pocky kamu di sini.<br>
			Pastikan koleksi stiker kamu sudah lengkap, dan berbeda satu sama lainnya.
		  </p>
		  <img src="<?php echo base_url();?>assets/public/img/def-up-sticker.png" alt="def-up-sticker" class="">
		</div>
	<div class="klik font-pocky"><a href=>Unggah</a></div>
</div>


<div class="mekanisme hidden 16-sticker">
	<div class="title-page"><img src="img/title-unggah-16.png" alt="title mekanisme" class=""></div>
	<div class="up-16-img">
	  <img src="img/16-sticker.png" alt="16-sticker" class="">
	  <p>
		Unggah koleksi 16 stiker reguler JKT48 Pocky kamu di sini.<br>
		Pastikan koleksi stiker kamu sudah lengkap, dan berbeda satu sama lainnya.
	  </p>
	  <img src="img/def-up-sticker.png" alt="def-up-sticker" class="">
	</div>
	<div class="klik font-pocky"><a href=>Unggah</a></div>
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
