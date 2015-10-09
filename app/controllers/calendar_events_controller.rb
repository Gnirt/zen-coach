class CalendarEventsController < ApplicationController
  respond_to :html,:json

  def index
    @calendar_events = CalendarEvent.where(user_id: current_user.id)
    respond_with(@calendar_events)
  end
end
