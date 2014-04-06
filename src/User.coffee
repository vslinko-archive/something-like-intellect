module.exports =
class User
  constructor: (@id) ->
    @messages = []

  addMessage: (message) ->
    @messages.push message
