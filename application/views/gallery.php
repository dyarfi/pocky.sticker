<?php if (!defined('BASEPATH')) exit('No direct script access allowed');?>
<script type="text/javascript">
window.onload = function() {
	FB.Canvas.setSize({ width: 810, height: 796 });
}
</script>
	<section id="content" class="galeri">
      <div class="title-page"><img src="<?php echo base_url();?>assets/public/img/title-pemenang.png" alt="title pemenang" class=""></div>
		<div class="cover">
			<div class="head_tit"></div>
			<div class="listcen">
				<div class="cont">         
				<div class="row margintop-40">
				<?php if (!empty($gallery)) {?>
				 <div class="col-sm-12 col-md-12 col-lg-12 pull-left sort">
					<!--form role="form" action="" type="GET" class="form-horizontal sort">
					  <div class="input-group">
						<select class="form-control input-sm" id="sel1" name="sort" style="width:100%" data-url="<?=uri_string();?>">
						  <option value=""><b>Sort by</b></option>                  
						  <option value="atoz" <?=$this->input->get('sort') == 'atoz' ? 'selected' : '';?>>A to Z</option>
						  <option value="ztoa" <?=$this->input->get('sort') == 'ztoa' ? 'selected' : '';?>>Z to A</option>
						</select>                  
					  </div>
					</form-->
					<div class="klik font-pocky pull-left col-md-6">
						<a href="<?php echo base_url('gallery?type=16');?>">PEMENANG STIKER REGULER</a>
					</div>
					<div class="klik font-pocky pull-right col-md-6">
						<a href="<?php echo base_url('gallery?type=2');?>">PEMENANG STIKER REGULER</a>
					</div>	
				</div>
				<div class="col-sm-7 pull-right">
				<!--form class="form-inline" action="" method="GET">
					<div class="form-group">
					  <label class="sr-only" for="exampleInputAmount">Participant</label>
					  <div class="input-group">
						<input type="text" class="form-control cari" name="search" value="<?=$this->input->get('search');?>" id="exampleInputAmount" placeholder="Participant">
					  </div>
					</div>
					<button type="submit" class="btn btn-primary">Cari</button>
				</form-->
				</div>
				<div class="text-center col-lg-12 margintop-40">
					<h3>Selamat kepada para pemenang.</h3>
					Pocky akan menghubungi kamu 
					untuk konfirmasi identitas dan pengiriman hadiah.
				</div>
				<?php } ?>
				<div class="clearfix marginbot-40"></div>
				<?php 
				  if (!empty($gallery)) {
				  foreach ($gallery as $image) { ?>
						<div class="col-xs-4 col-md-4">                  
							<div class="thumbnail">					
								<?php
									$pathinfo	= pathinfo($image->file_name);
									$thumb		= $pathinfo['filename'].'_thumb.'.$pathinfo['extension'];
								?>
								<a href="javascript:;" class="popover_bootbox" rel="<?=base_url();?>uploads/gallery/<?=$image->file_name?>">
									<img style="height:190px" data-toggle="modal" data-target=".bs-example-modal-sm-<?php echo $image->id ?>" src="<?=base_url();?>uploads/gallery/<?=$thumb?>" alt="<?=$image->file_name;?>" />
								</a>
							</div>
							<div class="bottomleft"><?=character_limiter($image->name, 16);?>
					  <?php /*    
					  if ($user_id == $image->part_id || $this->gallery_model->check_ifscored($user_id, $image->id) == 1) { ?>
					  <i class="glyphicon glyphicon-heart pull-right"></i>
						<span class="hit" rel="<?=base64_encode($image->id)?>"><?=$image->count;?></span>
							  <?php } else { ?>
					  <a href="javascript:;" class="btn-hit" rel="<?=base64_encode($image->id)?>" data-url="<?=base_url('scores');?>" data-ref="<?=current_url();?>" data-toggle="tooltip" data-placement="bottom">
						<i class="glyphicon glyphicon-heart pull-right"></i>
						<span class="hit" rel="<?=base64_encode($image->id)?>"><?=$image->count;?></span>
					  </a>
					  <?php } */ ?>
							</div>
						</div>
						<?php }
				  } else { ?>
				  <br/><br/><br/><br/><br/><br/><br/><br/><br/>
			  <h3 class="text-center font-pocky">Belum ada galeri</h3>
				  <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
				  <?php } ?>					  				
				</div>

				<div class="posit2">						
					<?php echo $links; ?>						
					<div class="clear"></div>
				</div>

						<div class="clear"></div>
				</div>
			</div>
		</div>
    <div class="atas posit2 text-center margintop-30">
			<a class="btn btn-primary btn-lg" role="button" href="<?=base_url('upload');?>">IKUTAN SEKARANG</a>
	</div>
	</section>

<script type="text/javascript">
    function fb_share(url, image) {
        var product_name = 'Pocky Stiker Inspirasi';
        var description = 'Koleksi stiker inspirasi Pocky JKT48 ku sudah lengkap! Unggah foto koleksi stiker inspirasi Pocky JKT48 kamu di sini, dan menangkan hadiah eksklusif JKT48 hanya dari Pocky.';
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
<?php $title = 'Unggah koleksi lengkap stiker inspirasi Pocky JKT48 kamu sekarang, dan menangkan hadiah eksklusif dari JKT48!'; ?>
    function tweet(url) {
        var urltemp = encodeURIComponent(url);
        window.open('https://twitter.com/share?url=' + urltemp + '&text=<?php echo urlencode($title) ?>', 'Share to Twitter', 'height=320, width=640, toolbar=no, menubar=no, scrollbars=no, resizable=no, location=no, directories=no, status=no');
    }
</script>