BaseResponder = require "./BaseResponder"


module.exports =
class HelloResponder extends BaseResponder
  match: (message) ->
    message.hasContext ["hello"]

  process: (message, callback) ->
    callback null, @createResponse message, "Ну привет"
