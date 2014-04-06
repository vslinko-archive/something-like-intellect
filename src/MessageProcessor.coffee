Chat = require "./Chat"
User = require "./User"
Message = require "./Message"


module.exports =
class MessageProcessor
  constructor: (@messageParser) ->
    @knownChats = {}
    @knownUsers = {}

  run: ->
    @messageParser.run()

  process: (messageBody, userId, chatId, callback) ->
    unless @knownChats[chatId]
      @knownChats[chatId] = new Chat chatId

    unless @knownUsers[userId]
      @knownUsers[userId] = new User userId

    @messageParser.parse messageBody, (err, words) =>
      return callback err if err

      chat = @knownChats[chatId]
      user = @knownUsers[userId]
      message = new Message messageBody, words, user, chat

      user.addMessage message
      chat.addMessage message
      chat.registerUser user

      callback null, message

  close: ->
    @messageParser.close()
