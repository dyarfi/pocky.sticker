(function ($) {

	//new WOW().init();

	jQuery(window).load(function() { 
		jQuery("#preloader").delay(100).fadeOut("slow");
		jQuery("#load").delay(100).fadeOut("slow");
	});

	$('#container').imagesLoaded( function() {
		// images have loaded
		//alert("foobar");
	});	
	
	//jQuery to collapse the navbar on scroll
	$(window).scroll(function() {
		if ($(".navbar").offset().top > 50) {
			$(".navbar-fixed-top").addClass("top-nav-collapse");
		} else {
			$(".navbar-fixed-top").removeClass("top-nav-collapse");
		}
	});
	
	//jQuery for page scrolling feature - requires jQuery Easing plugin
	$(function() {
		$('.navbar-nav li a').bind('click', function(event) {
			var $anchor = $(this);
			$('html, body').stop().animate({
				scrollTop: $($anchor.attr('href')).offset().top
			}, 1500, 'easeInOutExpo');
			event.preventDefault();
		});
	});

	$('.handler-team').click(function() {
		//$('.box-team').toggleClass('hidden wow slideInRight');
	});
	
	$('.box-team').click(function(){
		//$(this).addClass('hidden');
	});
	
	//$('#vacancy-form').submit(function() {
		//alert('asdf');
	//});
			
	$(".apply-btn").click(function() {
		var title = $(this).parent().find('.service-desc h5').text();		
		//alert(title);
		$('.vacancy-list-holder').hide({duration:'220',easing:'easeOutExpo'});		
		$(".vacancy-form-holder").show({duration:'220',easing:'easeOutExpo'}).find('.vacancy-title').text(title);				
		return false;
	});
	
	$('a.back').click(function(){
		$(".vacancy-form-holder").hide({duration:'220',easing:'easeOutExpo'});
		$('.vacancy-list-holder').show({duration:'220',easing:'easeOutExpo'});				
		return false;
	});
	
	/*
		$(".apply-btn").fancybox({
			maxWidth	: 800,
			maxHeight	: 600,
			fitToView	: false,
			width		: '70%',
			height		: '70%',
			autoSize	: false,
			closeClick	: false,
			openEffect	: 'none',
			closeEffect	: 'none',
			helpers: {
				overlay: {
				  locked: false
				}
			}
		});
	*/
   
//	$("#about").vide({
//            'mp4': base_URL + 'assets/public/media/Gatwick_Airport_1Videvo_1'//,
//            'webm': base_URL + 'assets/public/media/Gatwick_Airport_1Videvo_1',
//            'ogv': base_URL + 'assets/public/media/Gatwick_Airport_1Videvo_1',
//            'poster': base_URL + 'assets/public/media/Gatwick_Airport_1Videvo_1'
//    });
	
})(jQuery);
