Backbone     = require 'backbone'
App          = require '../application.coffee'
ExampleModel = require '../models/example.coffee'

class Example extends Backbone.Collection
  model: ExampleModel

module.exports = Example
