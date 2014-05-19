exports.before = (sprout, done) ->
  console.log 'generating new marionette project...'
  done()

exports.configure = [
  {
    type: 'input',
    name: 'name',
    message: 'What is the name of the project?'
  },
  {
    type: 'input',
    name: 'github_username',
    message: 'What is your github handle?'
  },
  {
    type: 'input',
    name: 'description',
    message: 'Describe your new project'
  }
]


exports.after = (s, cb) ->
  # after hook
