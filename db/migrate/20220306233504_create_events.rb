class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :start_date
      t.string :end_date
      t.string :location_id
      t.string :user_id

      t.timestamps
    end
  end
end
