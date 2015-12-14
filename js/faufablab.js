/* SMOOTH SCROLLING
------------------- */

$("a[href^='#'].smooth_scroll").on('click', function(e) {
  // prevent default anchor click behavior
  e.preventDefault();

  // store hash
  var hash = this.hash;

  // animate
  $('html, body').animate({scrollTop: $(hash).offset().top}, 500, function(){
     window.location.hash = hash;
   });
});

/* STICKY NAVBAR
------------------- */
if (undefined != $('.navbar-sticky')) {
	function stickynavbar() {
		if ($(window).scrollTop() >= (navbartop)) {
			navbarsticky.addClass("navbar-fixed-top");
			navbarplaceholder.show();
		} else {
			navbarsticky.removeClass("navbar-fixed-top");
			navbarplaceholder.hide();
		}
	}

	var navbarsticky = $('.navbar-sticky');
	navbartop = navbarsticky.offset().top;
	var navbarplaceholder = navbarsticky.clone().insertAfter(navbarsticky).addClass('navbar-static-top');
	navbarplaceholder[0].style.opacity=0;
	stickynavbar();

	$(document).scroll(stickynavbar);
}
