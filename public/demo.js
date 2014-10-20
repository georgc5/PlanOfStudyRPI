jQuery(document).ready(function(){

$(".goo-collapsible > li > a").on("click", function(e){
      
	if(!$(this).hasClass("active")) {
		
      // hide any open menus and remove all other classes
		//$(".goo-collapsible li ul").slideUp(350);
		//$(".goo-collapsible li a").removeClass("active");
      
		// open our new menu and add the open class
		$(this).next("ul").slideDown(350);
		$(this).addClass("active");
		
	}else if($(this).hasClass("active")) {
		
		$(this).removeClass("active");
		$(this).next("ul").slideUp(350);
	}
});

});