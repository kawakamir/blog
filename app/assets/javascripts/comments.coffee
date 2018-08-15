$(document).on 'click', 'a.edit', ->
    id= $(this).attr('id')
    content_id=
    $.get("pages/ajax/#{id}/edit")

$(document).on 'click', 'a.close', ->
    id= $(this).attr('id')
    $.get("/pages/ajax/#{id}")
