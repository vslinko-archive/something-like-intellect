async = require "async"
Word = require "./Word"


module.exports =
class MessageParser
  constructor: (@stemmer) ->

  run: ->
    @stemmer.run()

  parse: (messageBody, callback) ->
    async.map messageBody.trim().split(/\s+/g), (word, callback) =>
      @stemmer.stem word, (err, result) ->
        return callback err if err
        callback null, new Word word, result.stem
    , callback

  close: ->
    @stemmer.close()
