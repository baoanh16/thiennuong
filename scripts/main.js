$(function () {
	$('.canhcam-header-1 .toggle-header').click(function (e) {
		e.preventDefault();
		$('.canhcam-header-1 .mainnav').toggleClass('active')
		$('.overlay').toggleClass('active')

	});
	$('.canhcam-header-1 .close-header').click(function (e) {
		e.preventDefault();
		$('.canhcam-header-1 .mainnav').removeClass('active')
		$('.overlay').removeClass('active')
	});
	$('.overlay').click(function (e) {
		e.preventDefault();
		$('.canhcam-header-1 .mainnav').removeClass('active')
		$('.overlay').removeClass('active')
	});
	$('.tn-support-3 .question').click(function(e){
		e.preventDefault();
		$(this).toggleClass('active')
		$(this).next().slideToggle()
	})

	//Datepicker
	$('#booking-wrapper .booking-calendar').datepicker({
		language: 'vi',
		weekStart: 1
	});

	//Set url for social button
	createNewsSocial1()
	// Run the function as the page loads, in case the user refreshes after scrolling
    adjustHeader();

    // Add event listener for scrolling
    $(document).on('scroll', adjustHeader);
});
///////////////////////// End Ready Document ///////////////////////////


///Slider home banner
var slider = tns({
	container: '.home-banner',
	mode: 'gallery',
	items: 1,
	autoplay: true,
	controls: false,
	nav: false,
	autoplayButtonOutput: false,
	animateIn: 'fadeIn',
	animateOut: 'fadeOut',
	animateDelay: 2000,
	speed: 2000
});

///Slider home service
var slider2 = tns({
	container: '.tn-home-3 .service-slider',
	controlsContainer: '.tn-home-3 .slider-nav',
	items: 1,
	autoplay: true,
	controls: true,
	nav: false,
	autoplayButtonOutput: false,
	speed: 1000,
	gutter: 20,
	rewind: true,
	responsive: {
		768: {
			items: 2
		},
		992: {
			items: 3
		}
	}
});

///Slider home feedback
var slider3 = tns({
	container: '.tn-home-5 .home-feedback-slider',
	items: 1,
	autoplay: true,
	controls: false,
	nav: true,
	autoplayButtonOutput: false,
	speed: 1000,
});

// stickybits('.canhcam-header-1');
function createNewsSocial1() {
	var newsFullPath = document.URL
	var newsFullPathEncode = encodeURIComponent(document.URL)
	$('.fb-like').attr('data-href', newsFullPath)
	$('.fb-like .fb-xfbml-parse-ignore').attr('href', 'https://www.facebook.com/sharer/sharer.php?u=' + newsFullPathEncode + '&src=sdkpreparse')
	$('.twitter-share-button').attr('data-url', newsFullPath)
}

function adjustHeader () {
	// Check if document has scrolled at all
	if ($(document).scrollTop() > 1 )
		$('.canhcam-header-1').addClass('fixed');
	else
		$('.canhcam-header-1').removeClass('fixed');
}

