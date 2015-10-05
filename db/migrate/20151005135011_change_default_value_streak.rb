class ChangeDefaultValueStreak < ActiveRecord::Migration
  def change
    change_column_default :habits, :longest_streak, 0
    change_column_default :habits, :current_streak, 0
  end
end
