class CalendarEventsController < ApplicationController
  def index
    @calendar_events = CalendarEvent.find_by_user_id(current_user.id)
  end
end
