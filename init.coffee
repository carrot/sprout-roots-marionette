fs          = require 'fs'
path        = require 'path'
ejs         = require 'ejs'
classify    = require 'underscore.string/classify'
underscored = require 'underscore.string/underscored'

exports.configure = [
  {
    name: 'name'
    message: 'What is your project\'s name?'
  }, {
    name: 'github_username'
    message: 'What is your github username?'
  }, {
    name: 'description'
    message: 'A short description of your project'
  }, {
    name: 'models'
    message: '(Optional) List your models, separated by spaces'
  }
]

exports.after = (utils, config) ->
  classes = config.models.split(' ').map((m) -> classify(m))
  if config.models.length then write(utils, f) for f in classes

write = (utils, name) ->
  tpl = fs.readFileSync(path.join(__dirname, 'templates/model.coffee'), 'utf8')
  out = path.join(utils._target, "assets/js/models/#{underscored(name)}.coffee")
  text = ejs.render(tpl, name: name)
  fs.writeFileSync(out, text)
