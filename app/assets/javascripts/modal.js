$(document).on('turbolinks:load', function() {
  $('.item-container__delete').on('click', function() {
    $('.overlay').fadeIn();
    $('#modalwin').fadeIn();
  });

  $('.cancel-btn').on('click', function() {
    $('.overlay').fadeOut();
    $('#modalwin').fadeOut();
  });
});
