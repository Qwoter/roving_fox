# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  $(".sticker").sticky()
  $(".sticker2").sticky({topSpacing:60})

$(document).ready ->
  $('#new_product').on('ajax:success', (e, data, status, xhr) ->
    
    $('.submit_button').fadeOut(500, ->
      $('.submit_button').animate({backgroundColor: "#27ae60"}, 700)
      $(this).val 'WE WILL ANSWER YOU SHORTLY!'
      return
    ).fadeIn(300)

    return
  ).on 'ajax:error', (e, xhr, status, error) ->
    alert 'Failed.'
    return
  return
