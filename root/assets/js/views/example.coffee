define ['marionette', 'templates'], (Marionette, templates) ->

  console.log templates.example

  class Example extends Marionette.ItemView
    template: templates.example
