var OwlCarousel = function () {
  return {      
    //Owl Carousel
    initOwlCarousel: function () {

    	//Owl Slider v1
		  jQuery(".owl-slider").owlCarousel( {
	      loop: true,
	      rtl: true,
	      nav: false,
	      dots: false,
	      responsive: {
	        0:{
	        	items: 1
	        },
	        979:{
	          items: 2
	        },
	        1000:{
	          items: 3
	        },
	        1100:{
	          items: 4
	        }
	      },
		  });
		  jQuery(".owl-slider-next").click(function() {
		    jQuery(".owl-slider").trigger("next.owl.carousel");
		  })
		  jQuery(".owl-slider-prev").click(function() {
		    jQuery(".owl-slider").trigger("prev.owl.carousel");
		  })

		  //Owl Slider v2
	    jQuery(".owl-slider-v2").owlCarousel({
	      loop: true,
	      rtl: true,
	      nav: false,
	      dots: true,
        dotsClass: "owl-pagination",
        dotClass: "owl-page",
	      responsive: {
	        0:{
	        	items: 1
	        },
	        600:{
	        	items: 2
	        },
	        979:{
	          items: 3
	        },
	        1000:{
	          items: 4
	        },
	        1100:{
	          items: 5
	        }
	      },
	    });

		  //Owl Slider v4
		  jQuery(".owl-slider-v4").owlCarousel({
	      loop: true,
	      rtl: true,
	      nav: false,
	      dots: false,
	      responsive: {
	        0:{
	        	items: 1
	        },
	        479:{
	        	items: 2
	        },
	        979:{
	          items: 3
	        },
	        1000:{
	          items: 4
	        },
	        1100:{
	          items: 5
	        }
	      },
		  });
		  jQuery(".owl-slider-v4-next").click(function(){
		    jQuery(".owl-slider-v4").trigger('next.owl.carousel');
		  })
		  jQuery(".owl-slider-v4-prev").click(function(){
		    jQuery(".owl-slider-v4").trigger('prev.owl.carousel');
		  })
		}
  };
}();