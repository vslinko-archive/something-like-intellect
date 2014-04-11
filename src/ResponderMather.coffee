module.exports =
class ResponderMather
  constructor: (@dataStorage, @responders) ->

  run: ->
    @priorities = @dataStorage.loadData "priorities"

  match: (message) ->
    matched = @responders.filter (responder) ->
      responder.match message
    .sort (a, b) =>
      aPriority = @priorities.indexOf a.constructor.name
      bPriority = @priorities.indexOf b.constructor.name
      aPriority - bPriority

    if matched.length > 0
      matched[0]
    else
      null

  close: ->
