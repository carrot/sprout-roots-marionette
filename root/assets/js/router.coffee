define ['app', 'marionette'], (App, Marionette) ->

  class Router extends Marionette.AppRouter
    appRoutes:
      "": "root"
