module.exports = ->
  myStem = new MyStem
  messageParser = new MessageParser myStem
  new MessageProcessor messageParser


module.exports.Chat = Chat = require "./Chat"
module.exports.Message = Message = require "./Message"
module.exports.MessageParser = MessageParser = require "./MessageParser"
module.exports.MessageProcessor = MessageProcessor = require "./MessageProcessor"
module.exports.MyStem = MyStem = require "mystem-stream"
module.exports.User = User = require "./User"
module.exports.Word = Word = require "./Word"
