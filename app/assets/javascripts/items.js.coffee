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
        contentType: 'application/json'
        type: 'POST'
        success: (response)->
        statusCode:
          200: ->
            ui.draggable.parents('tr').remove()
            bootstrap_message('Successfuly updated', 'success')

          304: ->
            bootstrap_message('Nothing to change (Try reload this page)', 'warning')

          404: ->
            bootstrap_message('Entity not found (Try reload this page)', 'error')

    activeClass: 'droppable-active'
    hoverClass: 'droppable-hover'
    accept: '.draggable'


window.bootstrap_message = (message,type='info') ->
  $('#sidebar .alert').remove()
  $('#sidebar').append '<div class="alert alert-'+type+'">
        <a class="close" data-dismiss="alert">x</a>
        <strong class="capital"><span>'+type+'!</span></strong> '+message+'
      </div>'
