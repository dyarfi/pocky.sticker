<?php if (!defined('BASEPATH')) exit('No direct script access allowed');?>
<script type="text/javascript">
window.onload = function() {
	FB.Canvas.setSize({ width: 810, height: 796 });
}
</script>
<?php

?>
<div class="center-block">
	<div class="container content">
		<div class="sticker-upload-landing">
			<div class="title-page">
			<?php if ($completed === true) { ?>
				<img src="<?php echo base_url();?>assets/public/img/title-maaf.png" alt="title terimakasih" class="">
			<?php } else { ?>
				<img src="<?php echo base_url();?>assets/public/img/title-terimakasih.png" alt="title terimakasih" class="">
			<?php } ?>
			</div>
			<div class="up-16-img">
				<img class="img-thumbnail" style="max-width:600px" src="<?php echo base_url('uploads/gallery/'.$image->file_name);?>" alt="def-up-sticker" class="">
				<?php 
				$find = '';
				$text = '';				
				if ($type == 2) {
					$find = 16;
					$label = 'spesial';
					$text = '<div class="klik font-pocky link-option link-sm unggah16"><a class="click" rel="sticker16" href="javascript:;">Unggah Foto 16 stiker regular</a></div>';
				} else if ($type == 16) {
					$find = 2;
					$label = 'reguler';
					$text = '<div class="klik font-pocky link-option link-sm unggah2"><a class="click" rel="sticker2" href="javascript:;">Unggah Foto 2 stiker spesial</a></div>';
				}
				$upload = $this->gallery_model->get_upload_type($user_id, $find);
				/*
					$('.unggah16 a.click, .unggah2 a.click').click(function(){
					var href = $(this).attr('href');
					var arel = $(this).attr('rel');
					$('.sticker-upload-landing').hide({duration:'260',easing:'easeInOutBack'});
					$('.mekanisme').find('.sticker-upload').hide({duration:'260',easing:'easeInOutBack'});
					$('.mekanisme').find('.'+arel).show();
					return false;
				});
				*/
				
				if ($completed === true) { ?>
					<p>
						Kamu sudah pernah mengunggah foto koleksi stiker <?php echo $label;?> JKT48 Pocky. 
					<br/>
						Sayangnya, kamu hanya bisa mengunggah satu kali saja.
					</p>
				<?php } else { ?>
					<p>
						Foto koleksi <?php echo $type;?> stiker <?php echo $label;?> JKT48 Pocky kamu sudah terunggah.
					</p>
					<p>
						Cek halaman GALERI PEMENANG untuk mengetahui apakah kamu beruntung<br>
						memenangkan hadiah eksklusif dari Pocky dan JKT48.
					</p>
				<?php } ?>
			</div>
			<div class="klik font-pocky <?php echo (!$upload) ? 'link-option' : '';?>"><a href="#inline_content" class="sharebox_btn" rel="sharebox">Share ke teman</a></div>
			<?php
			if (!$upload) {
				echo $text;
			}
			?>
			<div class="sharebox" style="display:none">
				<div id="inline_content">
					<div class="clearfix">
						<img class="img-thumbnail" style="max-width:600px" src="<?php echo base_url('uploads/gallery/'.$image->file_name);?>" alt="def-up-sticker" class="">
					</div>
					<div class="marginbot-20"></div>
					<div class="pull-left">
						<a href="#" onclick="fb_share('<?php echo base_url(uri_string());?>', '<?php echo 'http://mypockyid.com/pockysticker/uploads/gallery/'.rawurlencode($image->file_name);?>')" class="shareit facebook" rel="facebook"></a>
					</div>
					<div class="pull-right">
						<a href="#" onclick="tweet('<?php //echo $url ?>','')" class="shareit twitter" rel="twitter"></a>
					</div>
					<!--div class="klik font-pocky clearfix text-center"><span>Share ke teman</span></div-->
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
						  Unggah koleksi 2 stiker spesial JKT48 Pocky kamu di sini.<br>
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
		
	</div> <!-- /container -->
</div>


<script type="text/javascript">
    function fb_share(url, image) {
        var product_name = 'Pocky Stiker Inspirasi';
        var description = 'Koleksi stiker inspirasi Pocky JKT48 ku sudah lengkap! Unggah foto koleksi stiker inspirasi Pocky JKT48 kamu di sini, dan menangkan hadiah eksklusif JKT48 hanya dari Pocky.';
		console.log(image);
        var share_image = image;
        var share_link = url;
        FB.ui({
            method: 'feed',
            name: product_name,
            link: share_link,
            picture: share_image,
            description: description
        }, function(response) {
            if (response && response.post_id) {
            }
            else {
                console.log(response);
            }
        });
    }
<?php $title = 'Unggah koleksi lengkap stiker inspirasi Pocky JKT48 kamu sekarang, dan menangkan hadiah eksklusif dari JKT48!'; ?>
    function tweet(url) {
        var urltemp = encodeURIComponent(url);
        window.open('https://twitter.com/share?url=' + urltemp + '&text=<?php echo urlencode($title) ?>', 'Share to Twitter', 'height=320, width=640, toolbar=no, menubar=no, scrollbars=no, resizable=no, location=no, directories=no, status=no');
    }
</script>