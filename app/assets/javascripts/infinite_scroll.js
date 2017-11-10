$(document).on('ready page:load', function () {
  var isLoading = false;
  if ($('#infinite-scrolling').size() > 0) {
    $('.layout').on('scroll', function() {
      var more_posts_url = $('.pagination a.next_page').attr('href');
      console.log($('#feed').height() - $('.layout').scrollTop())
      if (!isLoading && more_posts_url && ($('#feed').height() - $('.layout').scrollTop()) < 650 ) {
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

$(document).on('ready page:load', function () {
  var isLoading = false;
  if ($('#infinite-articles').size() > 0) {
    $('.layout').on('scroll', function() {
      var more_articles_url = $('.pagination a.next_page').attr('href');
      console.log($('.articles').height() - $('.layout').scrollTop())
      if (!isLoading && more_articles_url && ($('.articles').height() - $('.layout').scrollTop()) < 600 ) {
        console.log('Ca va charger!');
        isLoading = true;
        $.getScript(more_articles_url).done(function (data,textStatus,jqxhr) {
          isLoading = false;
        }).fail(function() {
          isLoading = false;
        });
      }
    });
  }
});
