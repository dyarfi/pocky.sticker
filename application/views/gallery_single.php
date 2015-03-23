<?php if (!defined('BASEPATH')) exit('No direct script access allowed');?>
<script type="text/javascript">
window.onload = function() {
	FB.Canvas.setSize({ width: 810, height: 796 });
}
</script>

<div class="center-block">
	<div class="container content">
		  <div class="mekanisme">
			<div class="title-page"><img src="<?php echo base_url();?>assets/public/img/title-terimakasih.png" alt="title terimakasih" class=""></div>
			<div class="up-16-img">
			  <img class="img-thumbnail" style="max-width:600px" src="<?php echo base_url('uploads/gallery/'.$image->file_name);?>" alt="def-up-sticker" class="">
			  <p>
				Foto koleksi <?php echo $type;?> stiker spesial JKT48 Pocky kamu sudah terunggah.
			  </p>
			  <p>
				Cek halaman GALERI PEMENANG untuk mengetahui apakah kamu beruntung<br>
				memenangkan hadiah eksklusif dari Pocky dan JKT48.
			  </p>
			</div>
			<div class="klik font-pocky"><a href="#inline_content" class="sharebox_btn" rel="sharebox">Share ke teman</a></div>
			<div class="sharebox" style="display:none">
				<div id="inline_content">
					<div class="clearfix">
						<img class="img-thumbnail" style="max-width:600px" src="<?php echo base_url('uploads/gallery/'.$image->file_name);?>" alt="def-up-sticker" class="">
					</div>
					<div class="marginbot-20"></div>
					<div class="pull-left">
						<a href="#" onclick="fb_share('<?php echo base_url(uri_string());?>', '<?php echo $image->file_name;?>')" class="shareit facebook" rel="facebook"></a>
					</div>
					<div class="pull-right">
						<a href="#" onclick="tweet('<?php //echo $url ?>','')" class="shareit twitter" rel="twitter"></a>
					</div>
					<!--div class="klik font-pocky clearfix text-center"><span>Share ke teman</span></div-->
				</div>
			</div>
		</div>
	</div> <!-- /container -->
</div>


<script type="text/javascript">
    function fb_share(url, image) {
        var product_name = 'Pocky Stiker Inspirasi';
        var description = 'Koleksi stiker inspirasi Pocky JKT48 ku sudah lengkap! Unggah foto koleksi stiker inspirasi Pocky JKT48 kamu di sini, dan menangkan hadiah eksklusif JKT48 hanya dari Pocky.';
        var share_image = 'http://mypockyid.com/pockysticker/uploads/gallery/' + image;
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