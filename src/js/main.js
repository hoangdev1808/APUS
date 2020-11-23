function fullpage() {
	// if (($(window).width() > 1280) && ('#pagepiling'.length >= 1)) {
	// 	$('#pagepiling').pagepiling({
	// 		menu: null,
	// 		direction: 'vertical',
	// 		verticalCentered: true,
	// 		sectionsColor: [],
	// 		anchors: [],
	// 		scrollingSpeed: 900,
	// 		easing: 'swing',
	// 		loopBottom: true,
	// 		loopTop: false,
	// 		css3: true,
	// 		normalScrollElements: null,
	// 		normalScrollElementTouchThreshold: 5,
	// 		touchSensitivity: 5,
	// 		keyboardScrolling: true,
	// 		sectionSelector: '.section',
	// 		animateAnchor: true,
	// 		//events
	// 		onLeave: function(index, nextIndex, direction) {
	// 			if (direction == 'down') {
	// 				$('header').addClass('active')
	// 				// $('.logo').addClass('active')
	// 			}
	// 		},
	// 		afterLoad: function(anchorLink, index) {
	// 			if (index == 1) {
	// 				$('header').removeClass('active')
	// 				// $('.logo').removeClass('active')
	// 			}
	// 		},
	// 		afterRender: function() {},
	// 	});
	// }
	// if (('#pagepiling'.length >= 1) && ($(window).width() > 1280)) {
	// 	$('body').css('overflow', 'hidden')
	// } else {
	// 	$('body').css('overflow', 'auto')
	// }
}
const toggleMenuMobile = () => {
	$(".toggle-menu").on("click", function () {
		$(this).toggleClass("active");
		$(this).siblings(".main-menu").toggleClass("active");
		$("body").toggleClass("disabled");
	});
};

//Header when scroll
const activeHeaderWhenScroll = () => {
	window.addEventListener("scroll", function () {
		if (window.pageYOffset > 0 && $(window).width() >= 1024) {
			document.querySelector("header").classList.add("header-scrolled");
			$("header").find(".logo").addClass("active");
		} else {
			document
				.querySelector("header")
				.classList.remove("header-scrolled");
			$("header").find(".logo").removeClass("active");
			$("header").removeClass("active");
		}
	});
};

function moveNavitem() {
	if ($(window).width() <= 1024) {
		$(".top-nav > #desktop").appendTo("nav .nav-mobile, .main-nav #mobile");
	} else {
		$(".top-nav > #desktop").appendTo(".main-nav .top-nav");
	}
}

//Slide banner
function EXIMMainBanner() {
	var swiperhomebanner = new Swiper(".home-banner", {
		loop: true,
		speed: 1500,
		watchSlidesProgress: true,
		mousewheelControl: true,
		keyboardControl: true,
		effect: "fade",
		autoplay: {
			delay: 3500,
			disableOnInteraction: false,
		},
	});
}

//Check banner
const checkLayoutBanner = () => {
	const pagesBanner = $("#page-banner");
	const heightHeader = $("header").outerHeight();
	const mainBanner = $("#main-banner");

	if (pagesBanner.length >= 1) {
		$("main").css("padding-top", heightHeader);
	} else {
		$("main").css("padding-top", heightHeader);
	}
	if (mainBanner.length >= 1) {
		$("main").css("padding-top", 0);
	}
};

function checkFooter() {
	if ($("#pagepiling").length == 1) {
		$("footer").css("display", "none");
	}
}

function listSlide() {
	var slidefiled = new Swiper(".h-3__slide .slide-filed", {
		slidesPerView: 3,
		spaceBetween: 30,
		loop: true,
		speed: 1000,
		autoplay: {
			delay: 2500,
			disableOnInteraction: false,
		},
		navigation: {
			nextEl: ".h-3__slide .swiper-button-next",
			prevEl: ".h-3__slide .swiper-button-prev",
		},
		breakpoints: {
			1280: {
				slidesPerView: 3,
				spaceBetween: 20,
			},
			600: {
				slidesPerView: 2,
				spaceBetween: 20,
			},
			375: {
				slidesPerView: 1,
				spaceBetween: 10,
			},
		},
	});
}

function moveBreadcrum() {
	if ($(".global-breadcrumb").length >= 1) {
		$("main > .global-breadcrumb").appendTo("main #page-banner");
	}
}

function Slidepage() {
	var swiper = new Swiper(".history-slide .swiper-container", {
		slidesPerView: 3,
		spaceBetween: 30,
		speed: 2000,
		loop: true,
		pagination: {
			el: ".history-slide .swiper-pagination",
			clickable: true,
			renderBullet: function (index, className) {
				return (
					'<span class="' +
					className +
					'">' +
					"<h3>" +
					(index + 2017) +
					"</h3>" +
					"</span>"
				);
			},
		},
		breakpoints: {
			1280: {
				slidesPerView: 3,
				spaceBetween: 20,
			},
			600: {
				slidesPerView: 2,
				spaceBetween: 20,
			},
			375: {
				slidesPerView: 1,
				spaceBetween: 10,
				autoplay: {
					delay: 2500,
					disableOnInteraction: false,
				},
			},
		},
	});
}

function toolBout() {
	$("#sidebar-wrapper")
		.find(".tool-ctrl")
		.on("click", function () {
			$("#sidebar-wrapper").find("#sideBar").slideToggle();
		});
}

function coutingNumber() {
	$(".counter").each(function () {
		var $this = $(this),
			countTo = $this.attr("data-count");
		$({
			countNum: $this.text(),
		}).animate(
			{
				countNum: countTo,
			},
			{
				duration: 5000,
				easing: "linear",
				step: function () {
					$this.text(Math.floor(this.countNum));
				},
				complete: function () {
					$this.text(this.countNum);
					//alert('finished');
				},
			}
		);
	});
}
const SlideN = () => {
	new Swiper(".other-posts .swiper-container", {
		slidesPerView: 3,
		spaceBetween: 30,
		navigation: {
			nextEl: ".swiper-next",
			prevEl: ".swiper-prev",
		},
		breakpoints: {
			1280: {
				slidesPerView: 2,
				spaceBetween: 30,
			},
			1280: {
				slidesPerView: 1,
				spaceBetween: 30,
			},
		},
	});
};

function setBackgroundElement() {
	$("[setBackground]").each(function () {
		var background = $(this).attr("setBackground");
		$(this).css({
			"background-image": "url(" + background + ")",
			"background-size": "cover",
			"background-position": "center center",
		});
	});
	$("[setBackgroundRepeat]").each(function () {
		var background = $(this).attr("setBackgroundRepeat");
		$(this).css({
			"background-image": "url(" + background + ")",
			"background-repeat": "repeat",
		});
	});
}
const mainSearch = () => {
	$("#search-icon").click(function () {
		$(".search-wrap").css("left", "0");
		$("body").addClass("disabled");
	});
	$(".close-btn").click(function () {
		$(".search-wrap").css("left", "-100%");
		$("body").removeClass("disabled");
	});
};
const clickScrollTo = () => {
	$("a").on("click", function (event) {
		console.log(this.hash);
		if (this.hash !== "") {
			event.preventDefault();
			var hash = this.hash;
			$(this)
				.parent()
				.addClass("active")
				.siblings()
				.removeClass("active");
			const TopDesktop =
				$(hash).offset().top - 71 - $(".filed-nav").outerHeight();
			const TopMobile =
				$(hash).offset().top - $(".filed-nav").outerHeight();
			if ($(window).width() >= 1024) {
				$("html, body").animate(
					{
						scrollTop: TopDesktop,
					},
					300
				);
			} else {
				$("html, body").animate(
					{
						scrollTop: TopMobile,
					},
					300
				);
			}
		} // End if
	});
};
document.addEventListener("DOMContentLoaded", () => {
	AOS.init({
		disable: "mobile",
		duration: 1300,
		offset: 300,
	});
	mainSearch();
	toggleMenuMobile();
	moveNavitem();
	clickScrollTo();
	setBackgroundElement();
	EXIMMainBanner();
	// checkLayoutBanner();
	checkFooter();
	listSlide();
	initSlide();
	SlideN();
	moveBreadcrum();
	Slidepage();
	activeHeaderWhenScroll();
	coutingNumber();
	toolBout();
	menuFake();
	checkFullpage();
	// fullpage();
	$(window).resize(function () {
		if ($(window).width() <= 1024) {
			moveNavitem();
		}
	});
	tabTN();
	checkMinitor();
});

function initSlide() {
	let home10Slide = new Swiper(".the-apus-home-10 .swiper-container", {
		// slidesPerView: 3,
		spaceBetween: 30,
		speed: 500,
		// loop: true,
		navigation: {
			nextEl: ".the-apus-home-10 .button-next",
			prevEl: ".the-apus-home-10 .button-prev",
		},
	});
}

function checkFullpage() {
	if ($("main").find(".full-page").length < 1) {
		$("main").find("#fake-header-open").css("display", "none");
	}
}

function menuFake() {
	let menu = $("header nav .header-left .main-menu");

	menu.clone().appendTo("#fake-header .menu-fake-header");
}

function tabTN() {
	let tabButton = $(".the-apus-home-10 .list-tabs li");
	let contentTN = $(".the-apus-home-10 .box-slide");
	tabButton.on("click", function () {
		var dataId = $(this).attr("toggle-for");
		tabButton.removeClass("active");
		$(this).addClass("active");
		contentTN.removeClass("active");
		$(".the-apus-home-10 .box-slide[tab-id=" + dataId + "]").addClass(
			"active"
		);
		initSlide();
	});
}

function checkMinitor() {
	let widthMinitor = $(window).width();
	console.log(widthMinitor);
	let heightMinitor = $(window).height();
	console.log(heightMinitor);

	if (widthMinitor <= 1920 && heightMinitor <= 950) {
		$(".full-page section").addClass("w1920-h937");
	}
	if (widthMinitor <= 1600 && heightMinitor <= 800) {
		$(".full-page section")
			.removeClass("w1920-h937")
			.addClass("w1600-h800");
	}
	if (widthMinitor <= 1366 && heightMinitor <= 768) {
		$(".full-page section")
			.removeClass("w1600-h800")
			.addClass("w1366-h768");
	}
}
