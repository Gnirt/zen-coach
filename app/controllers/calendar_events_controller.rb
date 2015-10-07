class CalendarEventsController < ApplicationController
  def index
    @calendar_events = CalendarEvent.where(user_id: current_user.id)
  end
end
