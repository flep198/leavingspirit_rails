(function() {
  $(window).load(function() {
    return $('a[data-target]').click(function(e) {
      var $this, new_target, url;
      e.preventDefault();
      $this = $(this);
      if ($this.data('target') === 'Add to') {
        url = $this.data('addurl');
      } else {
        url = $this.data('removeurl');
      }
      return $.ajax({
        url: url,
        type: 'put',
        success: function(data) {
          $('.cart-count').html(data[0]);
          $('.total-price').html(data[1]);
          $('.product-number-'+data[2]).html(data[3]);
          console.log(data);
          if(data[3]==0){
            console.log("test");
            return $this.closest('.shop-box-'+data[2]).slideUp();
          }
          
        }
      });
    });
  });

}).call(this);