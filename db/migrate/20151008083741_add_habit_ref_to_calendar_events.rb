class AddHabitRefToCalendarEvents < ActiveRecord::Migration
  def change
    add_reference :calendar_events, :habit, index: true, foreign_key: true
  end
end
