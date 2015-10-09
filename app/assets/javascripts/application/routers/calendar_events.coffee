class App.Routers.CalendarEvents extends App.Router

  routes:
    "calendar_events" : "index"

  index: ->
    collection = new App.Collections.CalendarEvents
    view = new App.Views.CalendarEvents.Index(collection: collection)
    $('.content').html(view.el)
    collection.fetch()
    view.render()
