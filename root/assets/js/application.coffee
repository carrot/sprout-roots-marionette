define ['marionette'], (Marionette) ->
  App = new Marionette.Application()

  App.addRegions
    main: '#main'

  return App
