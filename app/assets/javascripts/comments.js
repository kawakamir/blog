$(function(){
  $(document).on('click', 'a.edit', function() {
    var content_id, id;
    id = $(this).parent().attr('id');
    content_id = $(this).parent().attr('content_id');
    return $.get( content_id + "/comments/" + id + "/edit");
  });
})
