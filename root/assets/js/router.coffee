Marionette = require 'backbone.marionette'
App        = require './application.coffee'

class Router extends Marionette.AppRouter
  appRoutes:
    "": "root"

module.exports = Router
