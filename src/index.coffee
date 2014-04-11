module.exports = ->
  dataStorage = new DataStorage
  myStem = new MyStem
  wordContext = new WordContext dataStorage
  messageParser = new MessageParser myStem, wordContext
  responderMather = new ResponderMather dataStorage, [
    new responders.HelloResponder
    new responders.MusicResponder
  ]
  new MessageProcessor messageParser, responderMather


module.exports.Chat = Chat = require "./Chat"
module.exports.DataStorage = DataStorage = require "./DataStorage"
module.exports.Message = Message = require "./Message"
module.exports.MessageParser = MessageParser = require "./MessageParser"
module.exports.MessageProcessor = MessageProcessor = require "./MessageProcessor"
module.exports.MyStem = MyStem = require "mystem-stream"
module.exports.ResponderMather = ResponderMather = require "./ResponderMather"
module.exports.responders = responders = require "./responders"
module.exports.Response = Response = require "./Response"
module.exports.User = User = require "./User"
module.exports.Word = Word = require "./Word"
module.exports.WordContext = WordContext = require "./WordContext"
