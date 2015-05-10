$(document).ready(function(){
  $('.welcome_content form').submit(function(event){
    event.preventDefault();
    var title = $(this).find('input');
    var title_value = {title: title.val()};
    var request = $.ajax({
      url: $(this).attr('action'),
      method: 'POST',
      data: title_value
    });

    request.done(function(response){
      $('select').hide();
      $('.add_tag_button').show();
      $('.welcome_victory').remove();
      $(response).hide().appendTo('.welcome_content').slideToggle("slow");
      title.val('');
    });
  });
});

$(document).ready(function(){
  $('select').hide();
  $('.add_tag_button').click(function(){
    $('select').show();
    $('.add_tag_button').hide();
  });
});
