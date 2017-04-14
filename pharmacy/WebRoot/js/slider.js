// JavaScript Document

$(document).ready(function(){
	

	$('.sidelist').mouseover(function(){
		$(this).find('.r-list').show();
		$(this).find('.tab a').addClass('hover');
	});
	$('.sidelist').mouseout(function(){
		$(this).find('.r-list').hide();
		$(this).find('.tab a').removeClass('hover');
	});


	$(".tabox .tab dt").each(function(index){
	   $(this).mouseover(
		 function(){
			$(".tabox .tab dt").removeClass("hover");
			$(this).addClass("hover");
			$(".tabox .con ul:visible").hide();
			$(".tabox .con ul:eq(" + index + ")").show();
	  })
	});





	
});



