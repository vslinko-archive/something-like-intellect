Response = require "../Response"


module.exports =
class BaseResponder
  match: (message) ->
    throw new Error "Not implemented"

  process: (message, callback) ->
    throw new Error "Not implemented"

  createResponse: (message, body) ->
    new Response message, body

  getPriority: ->
    1
