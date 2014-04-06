module.exports =
class Message
  constructor: (@body, @words, @user, @chat, @createdAt = new Date) ->
