module.exports =
class Chat
  constructor: (@id) ->
    @messages = []
    @members = []

  addMessage: (message) ->
    @messages.push message

  registerUser: (user) ->
    for member in @members
      if member is user
        return

    @members.push user
