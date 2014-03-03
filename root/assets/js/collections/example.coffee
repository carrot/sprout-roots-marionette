define ['app', 'backbone', 'models/example'], (App, Backbone, ExampleModel) ->

  class Example extends Backbone.Collection
    model: ExampleModel
