fs          = require 'fs'
path        = require 'path'
ejs         = require 'ejs'
classify    = require 'underscore.string/classify'
underscored = require 'underscore.string/underscored'

exports.configure = [
  {
    type: 'input',
    name: 'name',
    message: 'What is your project\'s name?'
  }, {
    type: 'input',
    name: 'github_username',
    message: 'What is your github username?'
  }, {
    type: 'input',
    name: 'description',
    message: 'A short description of your project'
  }, {
    type: 'input',
    name: 'models',
    message: '(Optional) List your models, separated by spaces'
  }
]

exports.after = (s) ->
  classes = s.config_values.models.split(' ').map((m) -> classify(m))
  if s.config_values.models.length then write(s, f) for f in classes

write = (s, name) ->
  tpl = fs.readFileSync(path.join(__dirname, 'templates/model.coffee'), 'utf8')
  output_path = path.join(s.target, "assets/js/models/#{underscored(name)}.coffee")
  text = ejs.render(tpl, name: name)
  fs.writeFileSync(output_path, text)