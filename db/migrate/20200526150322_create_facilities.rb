class CreateFacilities < ActiveRecord::Migration[6.0]
  def change
    create_table :facilities do |t|
      t.string :name
      t.string :mode
      t.references :sport, null: false, foreign_key: true

      t.timestamps
    end
  end
end
