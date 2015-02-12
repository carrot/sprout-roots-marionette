Marionette   = require 'backbone.marionette'
App          = require './application.coffee'
ExampleModel = require './models/example.coffee'
ExampleView  = require './views/example.coffee'

class Controller
  root: ->
    model = new ExampleModel(foo: 'bar')
    App.main.show(new ExampleView(model: model))

module.exports = Controller
