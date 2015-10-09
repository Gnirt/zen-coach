class App.Views.CalendarEvents.Index extends App.View
  template: HandlebarsTemplates['calendar_events/index']

  initialize: ->
    @collection.on('sync', @render, @)
    super

  remove: ->
    @collection.off('sync', @render, @)
    super

  parameters: ->
    @collection.map (model) ->
      name: model.get('name')
      event_type: model.get('event_type')

  render: ->
    @$el.html(@template(@parameters()))
