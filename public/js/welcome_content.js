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
      // $('.welcome_victory').replaceWith(response);
      $('.welcome_victory').remove();
      $(response).hide().appendTo('.welcome_content').slideToggle("slow");
      title.val('');
    });
  });
});

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
      // $('.welcome_victory').replaceWith(response);
      $('.welcome_victory').remove();
      $(response).hide().appendTo('.welcome_content').slideToggle("slow");
      title.val('');
    });
  });
});
