class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.date :date
      t.string :status
      t.references :sport, null: false, foreign_key: true
      t.references :facility, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :timeslot, null: false, foreign_key: true

      t.timestamps
    end
  end
end
