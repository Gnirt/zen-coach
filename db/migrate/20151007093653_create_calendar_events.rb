class CreateCalendarEvents < ActiveRecord::Migration
  def change
    create_table :calendar_events do |t|
      t.string :event_type
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
