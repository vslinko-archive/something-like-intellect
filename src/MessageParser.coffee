async = require "async"
Word = require "./Word"


module.exports =
class MessageParser
  constructor: (@stemmer, @wordContext) ->

  run: ->
    @stemmer.run()
    @wordContext.run()

  parse: (messageBody, callback) ->
    async.map messageBody.trim().split(/\s+/g), (word, callback) =>
      @stemmer.stem word, (err, result) =>
        return callback err if err
        context = @wordContext.getContext word, result.stem
        callback null, new Word word, result.stem, context
    , callback

  close: ->
    @wordContext.close()
    @stemmer.close()
