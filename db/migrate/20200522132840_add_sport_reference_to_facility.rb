class AddSportReferenceToFacility < ActiveRecord::Migration[6.0]
  def change
    add_reference :facilities, :sport, null: false, foreign_key: true
  end
end
