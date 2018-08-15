$(document).on 'click', 'a.edit', ->
    id= $(this).attr('id')
    content_id= $(this).attr('content_id')
    $.get("contents/#{content_id}/comments/#{id}/edit")

$(document).on 'click', 'a.close', ->
    id= $(this).attr('id')
    $.get("/pages/ajax/#{id}")
