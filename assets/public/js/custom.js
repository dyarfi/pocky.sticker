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
    
    $('#register').submit(function(e) {
        e.preventDefault();
        //var post = $(this).serializeArray();
        //console.log(post.name);
        var url = base_URL + 'home/register/';
        $.ajax({
            type: "POST",
            url: url,
            data: $(this).serializeArray(),
            //cache: true,
            //async: true,
            timeout: 8000,
            dataType: "JSON",
            success: function(json) {
                // Check returned data from Parse JSON result
                if (json.result !== '' && json.result !== null) {
                    $('#'+json.bindto).empty();
                    $('<option value="0" name="'+json.bindto+'"/>').html('-- '+json.label+' --').appendTo('#'+json.bindto);
                    if (json.result !== undefined) {
                        $.each(json.result, function (index, area) {	
                            if (area !=='') {							
                                $('<option value="'+area.id+'" name="'+json.bindto+'"/>')
                                .html(area.name)
                                .appendTo('#'+json.bindto);
                            } 
                        });
                    } else {
                        $('<option value="" name="'+json.bindto+'"/>')
                        .html('Tidak ada area tersedia')
                        .appendTo('#'+json.bindto);
                    };
                    // Cheking if user click from beginning again
                    if (ref === 'province') {
                        console.log($('#urbandistrict').children().length);
                        if ($('#suburban').children().length !== 1) {
                            $('#suburban').empty();
                            $('<option value="0" name="suburban"/>').html('-- KECAMATAN --').appendTo('#suburban');
                        }
                    }
                }
                // Empty loader
                //$('#result_callback').empty();
                // Empty loader image
                //$('#loader').html('');
            },
            complete: function(message) { 

            },
            error: function(x,message,t) { 
                if(message==="timeout") {
                        console.log("got timeout");
                } else {
                        //alert(message);
                }	
            }
	});
        
    });  
})(jQuery);

// Function to get area region
function getRegion(dataSel,dataUrl) {
	// Set ajax post handler
        var ref = dataSel.attr('id');
	var ids = dataSel.val();
	var url = base_URL + 'home/get_area/' + dataUrl;
        // Send ajax request
        $.ajax({
            type: "POST",
            url: url,
            data: { 
                    id : ids
            },
            //cache: true,
            //async: true,
            timeout: 8000,
            dataType: "JSON",
            success: function(json) {
                // Check returned data from Parse JSON result
                if (json.result !== '' && json.result !== null) {
                    $('#'+json.bindto).empty();
                    $('<option value="0" name="'+json.bindto+'"/>').html('-- '+json.label+' --').appendTo('#'+json.bindto);
                    if (json.result !== undefined) {
                        $.each(json.result, function (index, area) {	
                            if (area !=='') {							
                                $('<option value="'+area.id+'" name="'+json.bindto+'"/>')
                                .html(area.name)
                                .appendTo('#'+json.bindto);
                            } 
                        });
                    } else {
                        $('<option value="" name="'+json.bindto+'"/>')
                        .html('Tidak ada area tersedia')
                        .appendTo('#'+json.bindto);
                    };
                    // Cheking if user click from beginning again
                    if (ref === 'province') {
                        console.log($('#urbandistrict').children().length);
                        if ($('#suburban').children().length !== 1) {
                            $('#suburban').empty();
                            $('<option value="0" name="suburban"/>').html('-- KECAMATAN --').appendTo('#suburban');
                        }
                    }
                }
                // Empty loader
                //$('#result_callback').empty();
                // Empty loader image
                //$('#loader').html('');
            },
            complete: function(message) { 

            },
            error: function(x,message,t) { 
                if(message==="timeout") {
                        console.log("got timeout");
                } else {
                        //alert(message);
                }	
            }
	});
}