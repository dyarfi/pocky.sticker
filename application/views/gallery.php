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
				 <div class="col-sm-5 pull-left sort">
					<form role="form" action="" type="GET" class="form-horizontal sort">
					  <div class="input-group">
						<select class="form-control input-sm" id="sel1" name="sort" style="width:100%" data-url="<?=uri_string();?>">
						  <option value=""><b>Sort by</b></option>                  
						  <option value="atoz" <?=$this->input->get('sort') == 'atoz' ? 'selected' : '';?>>A to Z</option>
						  <option value="ztoa" <?=$this->input->get('sort') == 'ztoa' ? 'selected' : '';?>>Z to A</option>
						  <!--option value="scores" <?=$this->input->get('sort') == 'scores' ? 'selected' : '';?>>Vote</option-->
						</select>                  
					  </div>
				  </form> 
				</div>
				<div class="col-sm-7 pull-right">
				<form class="form-inline" action="" method="GET">
					<div class="form-group">
					  <label class="sr-only" for="exampleInputAmount">Participant</label>
					  <div class="input-group">
						<input type="text" class="form-control cari" name="search" value="<?=$this->input->get('search');?>" id="exampleInputAmount" placeholder="Participant">
					  </div>
					</div>
					<button type="submit" class="btn btn-primary">Cari</button>
				</form>
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

<?php /* foreach ($gallery as $image) { 
        $pathinfo = pathinfo($image->file_name);
        $thumb    = $pathinfo['filename'].'_thumb.'.$pathinfo['extension'];?>
  <div class="modal fade bs-an bs-example-modal-sm-<?php echo $image->id ?>" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <button class="close" aria-hidden="true" data-dismiss="modal" type="button">×</button>
                <div class="listcen" stat="0">
                    <div class="cont" style="background-color:white;">
                    
                        <!-- <div class="head_tit thanks"></div> -->
                        
                        <div class="text-center">
                          <img class="img-responsive img-center" src="<?php echo base_url('uploads/gallery/'.$image->file_name);?>" alt="<?=$image->file_name;?>"/>
                        </div>
                                                        
                        <div class="atas">
                        <p class="text-center">
                          <?php $url = base_url('participant?data=').base64_encode($image->id);?>
                          <div class="pull-left"><a href="#" onclick="fb_share('<?php echo $url ?>', '<?=$thumb?>')" class="shareit facebook" rel="facebook"></a></div>
                          <div class="col-xs-6">
                            <?=@$image->name;?>
                            <div class="pull-right">

                              <?php   
							  
                              if ($user_id == $image->part_id || $this->gallery_model->check_ifscored($user_id, $image->id) == 1) { ?>
                              <i class="glyphicon glyphicon-heart pull-right"></i>
                              <span class="hit black" rel="<?=base64_encode($image->id)?>"><?=$image->count;?></span>
                              <?php } else { ?>
                              <a href="javascript:;" class="btn-hit black" rel="<?=base64_encode($image->id)?>" data-url="<?=base_url('scores');?>" data-ref="<?=current_url();?>">
                                <i class="glyphicon glyphicon-heart pull-right"></i>
                                <span class="hit black" rel="<?=base64_encode($image->id)?>"><?=$image->count;?></span>
                              </a>
                              <?php } ?>
                              
                            </div>
                          </div>
                          <div class="pull-right"><a href="#" onclick="tweet('<?php echo $url ?>','')" class="shareit twitter" rel="twitter"></a></div>
                        </p>
                        </div>
                        <br/>                        
                    </div>
                </div>
            </div>
        </div>
  </div>
<?php } */ ?>

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

<?php /* if (!empty($image_new)) { ?>
  <div id="myModal" class="modal fade bs-an" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <button class="close" aria-hidden="true" data-dismiss="modal" type="button">×</button>
                <div class="listcen" stat="0">
                    <div class="cont">                    
                        <div class="head_tit thanks"></div>                        
                        <div class="text-center">
                          <img class="img-responsive img-center" src="<?php echo base_url('uploads/gallery/'.$image_new->file_name);?>" alt="<?=$image_new->file_name;?>"/>
                        </div>
                        <h3 class="text-center popupload">Terima kasih telah berpartisipasi dalam Panasonic Cup All Star.<br />
                        Kunjungi galeri untuk share fotomu dan kumpulkan vote sebanyak-banyaknya<br />
                        untuk memperbesar kesempatan memenangkan hadiah kamera Panasonic Lumix.</h3>                                    
                        <div class="atas">
                            <p class="text-center">
                          <a class="btn btn-primary btn-lg" role="button" href="#" data-dismiss="modal">GALERI</a>
                        </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
  </div>
  <script type="text/javascript">$('#myModal').modal('show');</script>
<?php } */ ?>

  <!--div class="modal fade bs-an modal-message" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabelMessage" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <button class="close" aria-hidden="true" data-dismiss="modal" type="button">×</button>
                <div class="listcen" stat="0">
                    <div class="cont">                    
                        <div class="head_tit thanks"></div>                        
                        <h3 class="text-center popupload">Terima Kasih telah Memberikan Vote</h3>                                    
                        <div class="atas">
                            <p class="text-center">
                          <a class="btn btn-primary btn-lg" role="button" href="#" data-dismiss="modal">GALERI</a>
                        </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
  </div-->