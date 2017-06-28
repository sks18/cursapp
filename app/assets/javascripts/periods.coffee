save_form = ->
  if ($('#period_card_id').val() == "- Создание нового -")
    $('#period_card_id').remove()
    $('#period_card_attributes_id').remove()
  else if ($('#period_card_id').val() == '- Редактирование -')
    $('#period_card_id').remove()

insert_form = ->
  f = $("#card-fieldset").attr("data-content")
  if ($("#period_card_id").val() == '')
    $("#card-fields").html('Без клиента')
  else if ($('#period_card_id').val() == '- Создание нового -')
    $("#card-fields").html(f)
  else if ($('#period_card_id').val() == '- Редактирование -')
    $("#card-fields").html(f)
  else
    $("#card-fields").html('Выбран существующий пациент')

ready = ->
  insert_form()
  $("#period_card_id").change -> insert_form()
  $('#save').on 'click', save_form

$(document).ready ready
$(document).on 'page:load', ready
