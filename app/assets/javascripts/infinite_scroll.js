$(document).on('ready page:load', function () {
  var isLoading = false;
  if ($('#infinite-scrolling').size() > 0) {
    $('.layout').on('scroll', function() {
      var more_posts_url = $('.pagination a.next_page').attr('href');
      console.log($('.posts').height() - $('.layout').scrollTop())
      if (!isLoading && more_posts_url && ($('.posts').height() - $('.layout').scrollTop()) < 400 ) {
        console.log('Ca va charger!');
        isLoading = true;
        $.getScript(more_posts_url).done(function (data,textStatus,jqxhr) {
          isLoading = false;
        }).fail(function() {
          isLoading = false;
        });
      }
    });
  }
});
