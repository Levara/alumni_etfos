$(document).ready(function(){
    
    $(".btn-header-1") 	
    	.mouseover(function(){
        	$("#btn-icon-1").attr("src","/assets/register_blue.svg");
    	})
    	.mouseout(function(){
        	$("#btn-icon-1").attr("src","/assets/register.svg");
    	});

     $(".btn-header-2")
    	.mouseover(function(){
        	$("#btn-icon-2").attr("src","/assets/login_blue.svg");
    	})
    	.mouseout(function(){
        	$("#btn-icon-2").attr("src","/assets/login.svg");
    	});

    $(".btn-member")
    	.mouseover(function(){
        	$("#btn-icon-member").attr("src","/assets/member_2.svg");
    	})
    	.mouseout(function(){
        	$("#btn-icon-member").attr("src","/assets/member_1.svg");
    	});

    $(window).scroll(function() {
  		$(".slideanim").each(function(){
    	var pos = $(this).offset().top;
    	var winTop = $(window).scrollTop();
    	if (pos < winTop + 600) {
      		$(this).addClass("slide");
    	}
  		});
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
		        $('nav').removeClass('nav-down').addClass('nav-up');
		        $('nav').removeClass('nav-scrolled');
		    }
		    else {
		        // Scroll Up
		        if(st + $(window).height() < $(document).height()) {
		            $('nav').removeClass('nav-up').addClass('nav-down');
		            $('nav').addClass('nav-scrolled');
		            $('.navbar-default').css({
		            				'background-color':'rgba(255,255,255,1)',
		            			    'padding-bottom': '3rem',
		    						//'border-bottom': 'solid 2px #05376C'
		    						'border-bottom': 'solid 2px #03ABF4'
		    					});

		        }
		    }
		    
		    lastScrollTop = st;

		    if (lastScrollTop == 0) {
		    	$('nav').removeClass('nav-scrolled');
		    	$('.navbar-default').css({
		            	'background-color':'transparent',
		            	'padding-bottom': '0rem',
		    			'border-bottom': '0px'});
		    }
		}

});

