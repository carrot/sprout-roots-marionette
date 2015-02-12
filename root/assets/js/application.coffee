Marionette = require 'backbone.marionette'

App = new Marionette.Application()
App.addRegions(main: '#main')
module.exports = App
