$(document).ready(function(){
  $('.welcome_content form').submit(function(event){
    event.preventDefault();
    var title = $(this).find('input');
    var title_value = {title: title.val()};
    var request = $.ajax({
      url: $(this).attr('action'),
      method: 'POST',
      data: $(this).serialize()
    });

    request.done(function(response){
      $('select').hide();
      $('.add_tag_button').show();
      $('.welcome_victory').remove();
      $(response).hide().appendTo('.welcome_content').fadeIn(3000);
      title.val('');
    });
  });
});

$(document).ready(function(){
  $('select').hide();
  $('.add_tag_button').click(function(){
    $('select').show();
    $('.add_tag_button').hide();
    $("option[value='please_select']").replaceWith("<option value='please_select' selected='selected'>Please select a tag</option>")
  });
});
