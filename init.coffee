exports.before = (sprout, done) ->
  console.log 'generating new sprout template'
  done()

exports.configure = [
  'name',
  'github_username',
  'description'
]

exports.after = (s, cb) ->
  # after hook
