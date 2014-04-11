yaml = require "js-yaml"
path = require "path"
fs = require "fs"


module.exports =
class DataStorage
  constructor: (@directory = path.join __dirname, "..", "data") ->

  loadData: (key) ->
    data = fs.readFileSync path.join @directory, "#{key}.yml"
    yaml.safeLoad data.toString()
