axis         = require 'axis'
autoprefixer = require 'autoprefixer-stylus'
rupture      = require 'rupture'
templates    = require 'client-templates'
browserify   = require 'roots-browserify'
css_pipeline = require 'css-pipeline'

module.exports =
  ignores: ['readme.md', '**/layout.*', '**/_*', '.gitignore']

  extensions: [
    browserify(files: 'assets/js/main.coffee', out: '/js/build.js'),
    css_pipeline(files: 'assets/css/*.styl'),
    templates(base: 'assets/js/templates/')
  ]

  stylus:
    use: [axis(), autoprefixer(), rupture()]

  'coffee-script':
    sourcemap: true

  server:
    spa: true
