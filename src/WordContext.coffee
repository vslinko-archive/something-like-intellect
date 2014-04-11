module.exports =
class WordContext
  @UNKNOWN_CONTEXT = "unknown"

  constructor: (@dataStorage) ->

  run: ->
    data = @dataStorage.loadData "words"

    @contexts = []

    for context in Object.keys data
      words = if data[context].words then data[context].words.split /\s+/ else []
      stems = if data[context].stems then data[context].stems.split /\s+/ else []

      @contexts.push
        name: context
        words: words
        stems: stems

  getContext: (word, stem) ->
    for context in @contexts
      if word in context.words or stem in context.stems
        return context.name

    WordContext.UNKNOWN_CONTEXT

  close: ->
