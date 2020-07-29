class CreateTimeslots < ActiveRecord::Migration[6.0]
  def change
    create_table :timeslots do |t|
      t.integer :code
      t.integer :weekday
      t.time :start_time
      t.time :end_time

      t.timestamps
    end
  end
end
