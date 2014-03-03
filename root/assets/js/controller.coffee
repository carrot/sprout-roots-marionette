define ['app', 'marionette', 'models/example', 'views/example'], (App, Marionette, ExampleModel, ExampleView) ->

  class Controller
    root: ->
      model = new ExampleModel(foo: 'bar')
      App.main.show(new ExampleView(model: model))
