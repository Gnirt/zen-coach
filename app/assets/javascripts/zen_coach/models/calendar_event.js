ZenCoach.CalendarEvent  = Ember.Resource.extend({
  resourceUrl: '/calendar_events',

  event_type: Ember.computed(function() {
    return this.get('event_type');
  }).property('event_type')
});
