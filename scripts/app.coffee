window.App =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  Components: {}

  initialize: ->
    App.initializeElement(document)

  initializeElement: (element) ->
    console.log 'works'

$(document).ready ->
  App.initialize()
