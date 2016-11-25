$(document).on('ready',function(){
	$('.slick-parent-empresas').slick({
	  dots: false,
	  infinite: true,
	  speed: 1000,
	  autoplay: true,
	  autoplaySpeed: 2000,
	  slidesToShow: 5,
	  slidesToScroll: 1,
	  responsive: [
		{
		  breakpoint: 1024,
		  settings: {
			slidesToShow: 4,
			slidesToScroll: 1,
		  }
		},
		{
		  breakpoint: 800,
		  settings: {
			slidesToShow: 3,
			slidesToScroll: 1
		  }
		},
		{
		  breakpoint: 600,
		  settings: {
			slidesToShow: 2,
			slidesToScroll: 1
		  }
		},
		{
		  breakpoint: 420,
		  settings: {
			slidesToShow: 1,
			slidesToScroll: 1
		  }
		}
	  ]
	});
});