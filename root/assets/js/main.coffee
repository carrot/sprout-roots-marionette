cloudflare = '//cdnjs.cloudflare.com/ajax/libs'

require.config
  shim:
    underscore: { exports: '_' }
    backbone: { deps: ['jquery', 'underscore'], exports: 'Backbone' }
    marionette: { deps: ['backbone'], exports: 'Marionette' }
  paths:
    jquery: "#{cloudflare}/jquery/2.0.3/jquery.min"
    underscore: "#{cloudflare}/underscore.js/1.6.0/underscore-min"
    backbone: "#{cloudflare}/backbone.js/1.1.2/backbone-min"
    marionette: "#{cloudflare}/backbone.marionette/1.8.0/backbone.marionette.min"
    app: 'application'

require ['app', 'router', 'controller'], (App, Router, Controller) ->

  App.on 'initialize:after', ->
    router = new Router(controller: new Controller)
    App.reqres.setHandler('router', -> router)
    Backbone.history.start(pushState: true)

  App.start()
