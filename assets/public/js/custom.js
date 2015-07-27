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
	$('.sticker-upload .text-success').click(function(){
		$('.sticker-upload-landing').show({duration:'260',easing:'easeInOutBack'});
		$('.mekanisme').find('.sticker-upload').hide({duration:'260',easing:'easeInOutBack'});
	});
	$('.unggah16 a.click, .unggah2 a.click').click(function(){
		var href = $(this).attr('href');
		var arel = $(this).attr('rel');
		$('.sticker-upload-landing').hide({duration:'260',easing:'easeInOutBack'});
		$('.mekanisme').find('.sticker-upload').hide({duration:'260',easing:'easeInOutBack'});
		$('.mekanisme').find('.'+arel).show();
		return false;
	});
	$(".colorbox").colorbox({
		rel: 'nofollow',
		width:'640',
		maxWidth:'640px',
		innerWidth:'640px',
		preloading:false
	});
	$('#fileupload,#fileupload2,#fileupload16').fileupload({
		url: $(this).attr('data-url'),
		dataType: 'json',
		//acceptFileTypes: /(\.|\/)(gif|jpe?g|png)$/i,
		//maxFileSize:2000000, // 2000 KB
		sequentialUploads: false,
		add: function (e, data) {
			var uploadErrors = [];
			//var acceptFileTypes = /\/(pdf|xml)$/i;
			var acceptFileTypes = /(\.|\/)(gif|jpe?g|png)$/i;
			if(data.originalFiles[0]['type'].length && !acceptFileTypes.test(data.originalFiles[0]['type'])) {
				uploadErrors.push('Invalid file type, aborted');
			}
			//console.log(data.originalFiles[0]['size']) ;
			if(data.originalFiles[0]['size'] > 5000000) {
				uploadErrors.push('Filesize is too big');
			}
			if(uploadErrors.length > 0) {
				alert(uploadErrors.join("\n"));
			} else {
				//data.context = $('<p/>').text('Subiendo...').appendTo('.img_holder_xhr');
				data.submit();
			}
        },
        done: function (e, data) {
			e.preventDefault();
			$.each(data.result.files, function (index, file) {	
				//alert(file.error);
				$('.img-thumbnail a.colorbox')
				.prop('href',base_URL + file.url).empty()
				.html('<img src="'+base_URL + file.thumbnailUrl+'"//>');
				$('input[name="image_temp"]').attr('value',file.name);
            });			
			$('.progress').hide();			
			$('.button-submit').show({duration:'260',easing:'easeInOutBack'});
        },
        progressall: function (e, data) {
			e.preventDefault();
            var progress = parseInt(data.loaded / data.total * 100, 10);
			$('.progress').show();
            $('.progress .progress-bar').css(
                'width',
                progress + '%'
            ).html(progress+'% Sedang mengunggah, mohon menunggu..');
            $('.button-submit').hide({duration:'260',easing:'easeInOutBack'});
        }
    })
	.on('fileuploadfail', function (e, data) {
        $.each(data.files, function (index) {
        	var error = $('<span class="text-danger"/>').text('File upload failed.');
            $(data.context.children()[index])
                .append('<br>')
                .append(error);
            //console.log(files);
        });
    })
	.prop('disabled', !$.support.fileInput)
        .parent().addClass($.support.fileInput ? undefined : 'disabled');

	$('#fileupload').bind('fileuploadprogress', function (e, data) {
		// Log the current bitrate for this upload:
		//console.log(data.bitrate);
	});
	$('.popover_bootbox').click(function(){
		var image = $(this).attr('rel');
		var html = '<div class="text-center"><img class="img-responsive img-center" src="'+image+'" alt="'+image+'" width="100%"/></div>';
		bootbox.alert({message:html,closeButton:false});
	});
	
	$('.popup_close').click(function(){
		var html = '<div class="winners60">&nbsp;</div>';
		bootbox.alert({"backdrop":"static",message:html,closeButton:true}).css('top','100px');
		//return false;
	});
	
	$(document).on('click', '.bootbox', function (event) {
		bootbox.hideAll();
	});
    $('#register').submit(function(e) {
        e.preventDefault();
        var url = base_URL + 'home/register/';	
		$.colorbox({html:'<div class="text-center"><br/><img width="40" height="40" src="'+base_URL+'assets/public/img/spinner.gif"/><br/><br/><h4>Sedang Mengirim</h4></div>',width:200,height:200,preloading:false,scrolling:false,transition:'fade',overlayClose:false,escKey:false,closeButton:false}
		);
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
                if (json.result === 'OK' && json.label !== '') {
				  location.href = json.label;
                } else if (json.errors !== undefined) {
					var html = '';
					$.each(json.errors, function (index, error) {	
						html += error;
					});
					bootbox.alert({message:html,closeButton:false});
				}			
                // Empty loader
                //$('#result_callback').empty();
                // Empty loader image
                //$('#loader').html('');
            },
            complete: function(message) { 
				$.colorbox.close();
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
	
	// Add custom JS here
	$('a[rel=popover]').popover({
		html: true,
		trigger: 'hover',
		placement: 'bottom',
		content: function(){return '<img src="'+$(this).data('img') + '" />';}
	});
	// Add custom JS here
	$('a[rel=popover-top]').popover({
		html: true,
		trigger: 'hover',
		placement: 'top',
		content: function(){return '<img src="'+$(this).data('img') + '" />';}
	});
	$('select[name="sort"]').change(function() {
    	var varb = $(this).val();
    	$.ajax({
		  	data: $(this).serializeArray(),
		}).done(function(msg) {
			var redirect = $(location).attr('href');
			var val = jQuery.parseJSON(msg);
			// Redirect after request language
			if (varb != '') {
				location.href = val.url;
			}
		});
    });
	$('.sharebox_btn').colorbox({inline:true});
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
            data: { id : ids },
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
                        //console.log($('#urbandistrict').children().length);
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
            complete: function(message) { },
            error: function(x,message,t) { 
                if(message==="timeout") { console.log("got timeout"); } 
				else { /*alert(message);*/ }	
            }
	});
}
