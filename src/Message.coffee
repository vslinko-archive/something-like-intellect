module.exports =
class Message
  constructor: (@body, @words, @user, @chat, @createdAt = new Date) ->

  hasContext: (contexts) ->
    contexts.some (context) =>
      @words.some (word) ->
        word.context is context
