axis         = require 'axis-css'
autoprefixer = require 'autoprefixer-stylus'
rupture      = require 'rupture'
precompile   = require 'client-templates'

module.exports =
  ignores: ['readme.md', '**/layout.*', '**/_*', '.gitignore']

  extensions: [precompile(base: 'assets/js/templates/')]

  stylus:
    use: [axis(), autoprefixer(), rupture()]
