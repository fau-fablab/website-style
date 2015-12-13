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
if (undefined != $('.navbar-sticky').offset()) {
	navbartop = $('.navbar-sticky').offset().top;               
	scrollIntervalID = setInterval(stickIt, 10);
}

function stickIt() {

	var navbar = $('.navbar-sticky');

	if ($(window).scrollTop() >= (navbartop)) {
		navbar.addClass("navbar-fixed-top")
	} else {
		navbar.removeClass("navbar-fixed-top")
	}
}
