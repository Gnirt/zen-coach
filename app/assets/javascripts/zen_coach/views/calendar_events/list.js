ZenCoach.ListCalendarEventsView = Ember.View.extend({
  templateName:    'zen_coach/templates/calendar_events/list',
  calendar_eventsBinding: 'ZenCoach.calendarEventsController',

  refreshListing: function() {
    ZenCoach.calendarEventsController.findAll();
  }
});
