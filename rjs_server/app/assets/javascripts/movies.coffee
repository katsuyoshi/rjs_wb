# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->
  $('#studio_id').change ->
    $.ajax
      type: 'GET'
      url: 'movies/for_studio.js?studio_id=' + this.value
    return

$(document).ready(ready)
$(document).on('page:load', ready)
