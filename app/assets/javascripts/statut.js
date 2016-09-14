$(document).on('page:change', function() {

    	$('.statut #fb-icon')
    	.mouseover(function(){
        	$('.statut #fb-icon').attr("src","assets/facebook1.svg");
    	})
    	.mouseout(function(){
        	$('.statut #fb-icon').attr("src","assets/facebook.svg");
    	});

    	$('.statut #tw-icon')
    	.mouseover(function(){
        	$('.statut #tw-icon').attr("src","assets/twitter1.svg");
    	})
    	.mouseout(function(){
        	$('.statut #tw-icon').attr("src","assets/twitter.svg");
    	});

    	$('.statut #inst-icon')
    	.mouseover(function(){
        	$('.statut #inst-icon').attr("src","assets/instagram1.svg");
    	})
    	.mouseout(function(){
        	$('.statut #inst-icon').attr("src","assets/instagram.svg");
    	});

    
	// Hide Navbar on scroll down
		var didScroll;
		var lastScrollTop = 0;
		var delta = 5;
		var navbarHeight = $('nav').outerHeight();

		$(window).scroll(function(event){
		    didScroll = true;
		});

		setInterval(function() {
		    if (didScroll) {
		        hasScrolled();
		        didScroll = false;
		    }
		}, 250);

		function hasScrolled() {
		    var st = $(this).scrollTop();
		    
		    // Make sure they scroll more than delta
		    if(Math.abs(lastScrollTop - st) <= delta)
		        return;
		    
		    // If they scrolled down and are past the navbar, add class .nav-up.
		    // This is necessary so you never see what is "behind" the navbar.
		    if (st > lastScrollTop && st > navbarHeight){
		        // Scroll Down
		        $('#navbar2').removeClass('nav-down').addClass('nav-up')
		    }
		    else {
		        // Scroll Up
		        if(st + $(window).height() < $(document).height()) {
		            $('#navbar2').removeClass('nav-up').addClass('nav-down');
		        }
		    }		    
		    lastScrollTop = st;

		    if (lastScrollTop == 0) {
		    	$('#navbar2').css({
		            	'background-color':'white',
		            	'padding-bottom': '3rem',
		    			'border-bottom': 'solid 2px #03ABF4'});
		    }

		}

});