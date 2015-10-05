class CreateHabits < ActiveRecord::Migration
  def change
    create_table :habits do |t|
      t.string :name
      t.text :description
      t.belongs_to :user, index: true
      t.integer :longest_streak
      t.integer :current_streak

      t.timestamps null: false
    end
  end
end
