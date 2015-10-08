class Habit < ActiveRecord::Base
  belongs_to :user
  has_many :calendar_events

  validates :name, presence: true, uniqueness: true
end
