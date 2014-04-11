BaseResponder = require "./BaseResponder"


module.exports =
class MusicResponder extends BaseResponder
  match: (message) ->
    message.hasContext ["play", "music", "stop"]

  process: (message, callback) ->
    callback null, @createResponse message, "Пока не умею играть"
