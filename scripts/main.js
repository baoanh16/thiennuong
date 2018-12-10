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

	// $('.tn-support-3 .faq-item .question').click(function(e){
	// 	e.preventDefault();
	// 	$(this).toggleClass('active')
	// 	$(this).next().slideToggle()
	// })

	$("body").on("click", ".tn-support-3 .faq-item .question", function (e) {
		e.preventDefault();
		$(this).toggleClass('active')
		$(this).next().slideToggle()
	})

	$('.edit-link i').remove()
	$('.edit-link').append("<i class='fas fa-pencil-alt h5'></i>")



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
$('.small-thumbnail').slick({
	slidesToShow: 3,
	slidesToScroll: 1,
	arrows: false,
	fade: false,
	infinite: false,
	asNavFor: '.big-thumbnail',
	mobileFirst: true,
	focusOnSelect: true,
	responsive: [
		{
			breakpoint: 576,
			settings: {
				slidesToShow: 4,
			},
			breakpoint: 768,
			settings: {
				slidesToShow: 5,
				vertical: true,
				verticalSwiping: true,
				arrows: true,
				nextArrow: '<span class="lnr lnr-chevron-down"></span>'
			}
		}
	]
});

$('.big-thumbnail').slick({
	slidesToShow: 1,
	slidesToScroll: 1,
	arrows: false,
	fade: true,
	asNavFor: '.small-thumbnail'
});


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

///Slider product images


function createNewsSocial1() {
	var newsFullPath = document.URL
	var newsFullPathEncode = encodeURIComponent(document.URL)
	$('.fb-like').attr('data-href', newsFullPath)
	$('.fb-like .fb-xfbml-parse-ignore').attr('href', 'https://www.facebook.com/sharer/sharer.php?u=' + newsFullPathEncode + '&src=sdkpreparse')
	$('.twitter-share-button').attr('data-url', newsFullPath)
}

function adjustHeader() {
	// Check if document has scrolled at all
	if ($(document).scrollTop() > 1)
		$('.canhcam-header-1').addClass('fixed');
	else
		$('.canhcam-header-1').removeClass('fixed');
}

///Member tabs
try {
	tabby.init()
} catch (error) {
	console.error(error)
}



//View more button
var isLoading = false
$("body").on("click", "a.ajaxpagerlink", function (e) {
	e.preventDefault();
	/*  
	if uncomment the above line, html5 nonsupported browers won't change the url but will display the ajax content;
	if commented, html5 nonsupported browers will reload the page to the specified link. 
	*/

	//get the link location that was clicked
	let obj = $(this);
	let pageurl = $(this).attr('href');
	if (!pageurl.length) return;

	//to get the ajax content and display in div with id 'content'
	$.ajax({
		url: pageurl,
		data: { isajax: true },
		success: function success(data) {
			$('.ajaxresponse .ajaxresponsewrap').append($(data).find('.ajaxresponsewrap').html());
			obj.remove();
			isLoading = false

		}
	});
	//to change the browser URL to 'pageurl'
	// if (pageurl != window.location) {
	// 	window.history.pushState({ path: pageurl }, '', pageurl);
	// }
	//window.scrollTo(0, 0);

	return false;
});

