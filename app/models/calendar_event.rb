class CalendarEvent < ActiveRecord::Base
  belongs_to :user
  belongs_to :habit

  validate :habit_must_be_unique_today
  validates :name, presence: true

  def habit_must_be_unique_today
    if habit.present? && habit.created_at.to_date == Date.today
      errors.add(:habit_id, "Can not have duplicate habit event in the same day")
    end
  end
end
