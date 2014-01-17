# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$("#attachments a.add_fields").data("association-insertion-position", "before").data "association-insertion-node", "this"
$("#attachments").bind "insertion-callback", ->
  $(".attached-fields a.add_fields").data("association-insertion-position", "before").data "association-insertion-node", "this"
  $(".attached-fields").bind "insertion-callback", ->
    $(this).children("#attachedlist").remove()
    $(this).children("a.add_fields").hide()
