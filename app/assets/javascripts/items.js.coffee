# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->


  $('.draggable').draggable
    handle: '.draggable-handle',
    revert: true


  $('.drop-zone').droppable
    drop: (event, ui)->
      adopter_id =  this.id.match /\d+$/
      orphan_id = ui.draggable.attr('id').match(/\d+$/)

      jQuery.ajax
        url: '/budgets/'+adopter_id+'/adopt/'+orphan_id
        type: 'POST'
        success: (response)->
        statusCode:
          200: ->
            ui.draggable.parents('tr').remove()

          304: ->
            ui.draggable.parents('tr').remove()

    activeClass: 'droppable-active'
    hoverClass: 'droppable-hover'
