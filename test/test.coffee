rimraf = require 'rimraf'
path   = require 'path'
fs     = require 'fs'

test_template_path = path.resolve(_path, '../..')
test_path          = path.join(__dirname, 'tmp')
tpl = 'test-sprout-roots-marionette'
opts =
  config: path.join(_path, 'locals.json')

before ->
  sprout.add(tpl, test_template_path)
  .then -> rimraf.sync(test_path)
  .then -> sprout.init(tpl, test_path, opts)

after ->
  sprout.remove(tpl)

describe 'init', ->
  it 'creates generates readme', (done) ->
    tgt = path.join(test_path, 'readme.md')
    fs.existsSync(tgt).should.be.ok
    contents = fs.readFileSync(tgt, 'utf8')
    contents.should.match /# project x/
    done()
