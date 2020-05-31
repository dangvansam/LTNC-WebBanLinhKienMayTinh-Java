var MouseWheel = function () {

    return {

        initMouseWheel: function () {
            jQuery('.slider-snap').noUiSlider({
                start: [ 120, 420 ],
                snap: true,
                connect: true,
                range: {
                    'min': 0,
                    '5%': 20,
                    '10%': 40,
                    '15%': 80,
                    '20%': 120,
                    '25%': 160,
                    '30%': 200,
                    '35%': 240,
                    '40%': 280,
                    '50%': 300,
                    '60%': 340,
                    '70%': 380,
                    '80%': 420,
                    '90%': 460,
                    'max': 500
                }
            });
            jQuery('.slider-snap').Link('lower').to(jQuery('.slider-snap-value-lower'));
            jQuery('.slider-snap').Link('upper').to(jQuery('.slider-snap-value-upper'));
        }

    };

}();        