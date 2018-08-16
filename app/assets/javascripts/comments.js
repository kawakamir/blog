$(function(){
  $(document).on('click', 'a.edit', function() {
    var content_id, id;
    id = $(this).parent().attr('id');
    content_id = $(this).parent().attr('content_id');
    return $.get( content_id + "/comments/" + id + "/edit");
  });

  $(document).on('click', 'a.show', function() {
    var content_id, id;
    id = $(this).parent().attr('id');
    content_id = $(this).parent().attr('content_id');
    return $.get( content_id + "/comments/" + id);
  });

  $(document).on('click', '.comment-delete', function() {
    var content_id, id;
    id = $(this).parent().attr('id');
    content_id = $(this).parent().attr('content_id');
    $( '#'+ id ).fadeOut();
  });

  $(document).on('ajax:complete', '.new_comment', function(event, ajax, status){
    var response;
    response = $.parseJSON(ajax.responseText);
    $('#comments-adding').append(response.html);
    $('form')[0].reset();
  })
})

