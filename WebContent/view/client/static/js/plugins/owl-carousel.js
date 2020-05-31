var OwlCarousel = function () {

    return {
        
        //Owl Carousel
        initOwlCarousel: function () {
		    jQuery(document).ready(function() {
		        //Owl Slider
		        jQuery(document).ready(function() {
		        var owl = jQuery(".owl-slider");
		            owl.owlCarousel({
		            	items: [4],
		                itemsDesktop : [1000,3], //3 items between 1000px and 901px
		                itemsDesktopSmall : [979,2], //2 items between 901px
		                itemsTablet: [600,1], //1 items between 600 and 0;
		                slideSpeed: 1000
		            });

		            // Custom Navigation Events
		            jQuery(".next").click(function(){
		                owl.trigger('owl.next');
		            })
		            jQuery(".prev").click(function(){
		                owl.trigger('owl.prev');
		            })
		        });
		    });

		    //Owl Slider v2
	        jQuery(document).ready(function() {
	        var owl = jQuery(".owl-slider-v2");
	            owl.owlCarousel({
	                items:5,
	                itemsDesktop : [1000,4], //4 items between 1000px and 901px
		            itemsDesktopSmall : [979,3], //3 items between 901px
	                itemsTablet: [600,2], //2 items between 600 and 0;
	            });
		    });

		    //Owl Slider v3
	        jQuery(document).ready(function() {
	        var owl = jQuery(".owl-slider-v3");
	            owl.owlCarousel({
	                items:1,
	                itemsDesktop : [1000,1], //1 items between 1000px and 901px
		            itemsDesktopSmall : [979,1], //1 items between 901px
	                itemsTablet: [600,1], //1 items between 600 and 0;
	                itemsMobile : [479,1] //1 itemsMobile disabled - inherit from itemsTablet option
	            });
		    });

		    jQuery(document).ready(function() {
		        //Owl Slider v4
		        jQuery(document).ready(function() {
		        var owl = jQuery(".owl-slider-v4");
		            owl.owlCarousel({
		            	items: [5],
		                itemsDesktop : [1000,4], //4 items between 1000px and 901px
		                itemsTablet: [600,2], //2 items between 600 and 0;
		                itemsMobile : [479,2], //2 itemsMobile disabled - inherit from itemsTablet option
		                slideSpeed: 1000
		            });

		            // Custom Navigation Events
		            jQuery(".next").click(function(){
		                owl.trigger('owl.next');
		            })
		            jQuery(".prev").click(function(){
		                owl.trigger('owl.prev');
		            })
		        });
		    });

		    jQuery(document).ready(function() {
		        //Owl Slider
		        jQuery(document).ready(function() {
		        var owl = jQuery(".owl-twitter");
		            owl.owlCarousel({
		            	items: [1]
		            });

		            // Custom Navigation Events
		            jQuery(".next-v2").click(function(){
		                owl.trigger('owl.next');
		            })
		            jQuery(".prev-v3").click(function(){
		                owl.trigger('owl.prev');
		            })
		        });
		    });
		}
    };
    
}();