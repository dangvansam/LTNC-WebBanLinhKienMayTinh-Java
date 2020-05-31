var StyleSwitcher = function () {

    return {        

        //Style Switcher
        initStyleSwitcher: function() {    
            var panel = jQuery('.style-switcher');

            jQuery('.style-switcher-btn').click(function () {
                jQuery('.style-switcher').show();
            });

            jQuery('.theme-close').click(function () {
                jQuery('.style-switcher').hide();
            });
            
            jQuery('li', panel).click(function () {
                var color = jQuery(this).attr("data-style");
                setColor(color);
                jQuery('.list-unstyled li', panel).removeClass("theme-active");
                jQuery(this).addClass("theme-active");
            });

            var setColor = function (color) {
                jQuery('#style_color').attr("href", "../assets/css/theme-colors/" + color + ".css");
            }

        }
        
    };

}();