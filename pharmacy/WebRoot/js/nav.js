$(document).ready(function(){
  $('.globalnav >li').hover(
  function(){
	 
	  var current_li=$(this);
	  //NavWaitSlide = setTimeout(function() { 
		  if(!$(current_li).children('ul').is(':visible')&&$(current_li).children('ul').children('li').length>0)
		  {
				$(current_li).children('ul').slideDown(200);
		      }
	  //},100)
  },
 function(){
	  //clearTimeout(NavWaitSlide);
	  $(this).children('ul').slideUp(100);
	

  }
);

$('.depth2 >li').hover( function(){
	
	  var current_li=$(this);
	  //NavWaitSlide = setTimeout(function() { 
		  if(!$(current_li).children('.depth3').is(':visible')&&$(current_li).children('.depth3').children('li').length>0)
		  {
				$(current_li).children('.depth3').slideDown(200);
		      }
	  //},100)
  },
 function(){
	  //clearTimeout(NavWaitSlide);
	  $(this).children('.depth3').slideUp(100);
	

  });

$('.depth3').each(function(i,o){
						if($(o).children('li').length>0)   
						{
							$(o).parent().attr("class","arr");
							}
						   });
})
