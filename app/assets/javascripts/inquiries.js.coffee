# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$("[data-toggle='buttons-radio'] .btn").each (i, el) ->
  $button = $(el)
  checked = $button.find("input[type='radio']").prop("checked")
  if checked
    $button.addClass "disabled"
  else
    $button.removeClass "active"
