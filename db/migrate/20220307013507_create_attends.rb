class CreateAttends < ActiveRecord::Migration[6.1]
  def change
    create_table :attends do |t|
      t.integer :event_id
      t.integer :celebrity_id
      t.date :date
      t.timestamps
    end
  end
end
