<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>
	
	<div class="container content-footer">
      <div class="footer">
        <div class="copy">
          Copyright &copy; Pocky 2015. <a href="<?php echo base_url('terms');?>">Terms &amp; Conditions</a>
        </div>
      </div>
    </div>
<script>
  window.fbAsyncInit = function() {
    FB.init({
      appId      : '1539327999688781',
      xfbml      : true,
      version    : 'v2.3'
    });

    // ADD ADDITIONAL FACEBOOK CODE HERE
  };

  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "//connect.facebook.net/en_US/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
</script>