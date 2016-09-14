$(document).on('page:change', function()  {
	   $('.about-section .btn-member')
    	.mouseover(function(){
        	$('.about-section #btn-icon-member').attr("src","assets/member_2.svg");
    	})
    	.mouseout(function(){
        	$('.about-section #btn-icon-member').attr("src","assets/member_3.svg");
    	});

    	$('.about-section #fb-icon')
    	.mouseover(function(){
        	$('.about-section #fb-icon').attr("src","assets/facebook1.svg");
    	})
    	.mouseout(function(){
        	$('.about-section #fb-icon').attr("src","assets/facebook.svg");
    	});

    	$('.about-section #tw-icon')
    	.mouseover(function(){
        	$('.about-section #tw-icon').attr("src","assets/twitter1.svg");
    	})
    	.mouseout(function(){
        	$('.about-section #tw-icon').attr("src","assets/twitter.svg");
    	});

    	$('.about-section #inst-icon')
    	.mouseover(function(){
        	$('.about-section #inst-icon').attr("src","assets/instagram1.svg");
    	})
    	.mouseout(function(){
        	$('.about-section #inst-icon').attr("src","assets/instagram.svg");
    	});
});