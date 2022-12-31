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
          $('.cart-count').html(data);
        }
      });
    });
  });

}).call(this);