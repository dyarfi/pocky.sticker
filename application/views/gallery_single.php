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
			  <img src="<?php echo base_url();?>assets/public/img/def-up-sticker.png" alt="def-up-sticker" class="">
			  <p>
				Foto koleksi <?php echo type();?> stiker spesial JKT48 Pocky kamu sudah terunggah.
			  </p>
			  <p>
				Cek halaman GALERI PEMENANG untuk mengetahui apakah kamu beruntung<br>
				memenangkan hadiah eksklusif dari Pocky dan JKT48.
			  </p>
			</div>
			<div class="klik font-pocky"><a href=>Share ke teman</a></div>

		  </div>
	</div> <!-- /container -->
</div>


<script type="text/javascript">
    function fb_share(url, image) {
        var product_name = 'Score the selfie';
        var description = 'Foto selfie-ku sudah ikut berpartisipasi dalam Score The Selfie. Ayo berikan vote kamu sebanyak-banyaknya';
        var share_image = 'http://panasonicidapps.com/sts/uploads/gallery/' + image;
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
<?php $title = 'Pilih fotoku dalam #ScoreTheSelfie dan berikan vote kamu sebanyak-banyaknya. '; ?>
    function tweet(url) {
        var urltemp = encodeURIComponent(url);
        window.open('https://twitter.com/share?url=' + urltemp + '&text=<?php echo urlencode($title) ?>', 'Share to Twitter', 'height=320, width=640, toolbar=no, menubar=no, scrollbars=no, resizable=no, location=no, directories=no, status=no');
    }
</script>