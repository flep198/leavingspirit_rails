  (function($) {
    "use strict";
        $('.header').affix({
          offset: {
            top: 100,
            bottom: function () {
              return (this.bottom = $('.footer').outerHeight(true))
            }
          }
        })

        $('.audioplayer').affix({
          offset: {
            top: 1000,
            bottom: function () {
              return (this.bottom = $('.footer').outerHeight(true))
            }
          }
        })
  })(jQuery);