<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>
<script type="text/javascript">
    window.onload = function() {
        FB.Canvas.setSize({ width: 810, height: 752 });
    }
</script>
<div class="content-img">
	<div class="row">
	  <div class="registration">
		<?=form_open_multipart(base_url('home/register'),array('id'=>'register'));?>
		  <fieldset>

			<!-- Form Name -->
			<legend>Masukkan data pribadi kamu sebelum mengunggah foto koleksi stiker JKT48 yang sudah kamu miliki.</legend>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-sm-4 control-label" for="textinput">Nama&ast;</label>
			  <div class="col-sm-8">
				<input type="text" class="form-control" placeholder="Nama" value="<?php echo set_value('name', @$user_fb->fb_name) ?>" name="name" required>
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-sm-4 control-label" for="textinput">Usia&ast;</label>
			  <div class="col-sm-8">
				<input type="text" class="form-control" placeholder="Usia" value="<?php echo set_value('age', @$user_fb->age) ?>" name="age" required>
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-sm-4 control-label" for="textinput">Jenis Kelamin&ast;</label>
			  <div class="col-sm-8">
				<input type="text" placeholder="Jenis Kelamin" class="form-control">
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-sm-4 control-label" for="textinput">Alamat Lengkap&ast;</label>
			  <div class="col-sm-8">
				<input type="text" class="form-control" placeholder="Alamat" value="<?php echo set_value('address', @$user_fb->address) ?>" name="address" required>
			  </div>
			</div>

			<div class="form-group">
			  <div class="col-sm-4" for="textinput"></div>
			  <div class="col-sm-4">
				<input type="text" placeholder="Kecamatan" class="form-control">
			  </div>
			  <div class="col-sm-4">
				<input type="text" placeholder="Kabupaten/Kota" class="form-control">
			  </div>
			</div>

			<div class="form-group">
			  <div class="col-sm-4" for="textinput"></div>
			  <div class="col-sm-4">
				<input type="text" placeholder="Provinsi" class="form-control">
			  </div>

			  <div class="col-sm-4">
				<input type="text" placeholder="Kode Pos" class="form-control">
			  </div>
			</div>
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-sm-4 control-label" for="textinput">No Hp.&ast;</label>
			  <div class="col-sm-8">
				<input type="text" class="form-control" placeholder="No. Telp" value="<?php echo set_value('phone', @$user_fb->phone) ?>" name="phone">
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-sm-4 control-label" for="textinput">No Kartu Identitas&ast;</label>
			  <div class="col-sm-8">
				<input type="text" placeholder="KTP/SIM/KARTU PELAJAR" class="form-control">
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-sm-4 control-label" for="textinput">Nama Oshi Favorit&ast;</label>
			  <div class="col-sm-8">
				<input type="text" placeholder="Country" class="form-control">
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <div class="col-sm-4" for="textinput"></div>
			  <div class="col-sm-8">
				<p>&ast;&rpar; Semua kolom harus diisi</p>
				<p>&ast;&rpar; Semua data yang dimasukkan adalah benar</p>
				<p>&ast;&rpar; Saya menyetujui syarat & ketentuan yang berlaku</p>
			  </div>
			</div>

			<div class="klik font-pocky">
			  <button type="submit" class=""><a href=>LANJUTKAN</a></button>
			</div>

		  </fieldset>
		  <div class="error-form" style="width:50%; margin:0 auto">
			<?php echo validation_errors('<div class="alert alert-danger" role="alert">', '</div>'); ?>
		  </div>
		<?=form_close();?>
	  </div><!-- /.col-lg-12 -->
	</div><!-- /.row -->
</div>
<!--section id="content" class="thanks">
    <?=form_open_multipart(base_url('home/register'),array('id'=>'register'));?>
    <input type="hidden" name="picture_url" value="<?php echo @$user_fb->fb_pic ?>"/>
    <input type="hidden" name="fb_id" value="<?php echo @$user_fb->fb_id ?>"/>
    <div class="cover">
	<div class="head_tit regist"></div>
	<div class="listcen">
	    <div class="cont text-center">
		<h3 class="text-center">Masukkan data diri untuk mulai bermain.</h3>
		<img src="<?=base_url();?>assets/public/img/regist.png" alt="" />
		<div class="form_G">
		    <div class="input-group input-group-lg pull-right">
			<input type="text" class="form-control" placeholder="Nama" value="<?php echo set_value('name', @$user_fb->fb_name) ?>" name="name" required>
		    </div>
		    <div class="input-group input-group-lg pull-right">
			<input type="text" class="form-control" placeholder="Alamat" value="<?php echo set_value('address', @$user_fb->address) ?>" name="address" required>
		    </div>
		    <div class="input-group input-group-lg pull-right">
			<input type="text" class="form-control" placeholder="E-mail" value="<?php echo set_value('email', @$user_fb->fb_email) ?>" name="email" required>
		    </div>
		    <div class="input-group input-group-lg pull-right">
			<input type="text" class="form-control" placeholder="No. Telp" value="<?php echo set_value('phone', @$user_fb->phone) ?>" name="phone">
		    </div>   
		    <div class="input-group input-group-lg pull-right">
			<input type="text" class="form-control" placeholder="Twitter" value="<?php echo set_value('twitter', @$user_fb->twitter) ?>" name="twitter" required>
		    </div>                                   
		</div>
		<div class="row">
		  <div class="col-lg-12 kiri">
			<div class="input-group">
			  <span class="input-group-addon">
				<input type="checkbox" name="checkbox_rules" required="required">
			  </span>
			  <h3>Saya sudah menyetujui syarat dan ketentuan yang berlaku.*</h3>
			</div>
			<div class="input-group">
			  <span class="input-group-addon">
				<input type="checkbox" name="checkbox_data" required="required">
			  </span>
			  <h3>Data yang saya masukkan adalah benar.*</h3>
			</div>         
		  </div>
		</div>        
	    </div>
	</div>
    </div>
    <div class="error-form" style="width:50%; margin:0 auto">
	<?php echo validation_errors('<div class="alert alert-danger" role="alert">', '</div>'); ?>
    </div>
    <div class="atas posit2 text-center"><button type="submit" class="btn btn-primary btn-lg" role="button">DAFTAR</button></div>
    <?=form_close();?>
</section-->