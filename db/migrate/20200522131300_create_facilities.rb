class CreateFacilities < ActiveRecord::Migration[6.0]
  def change
    create_table :facilities do |t|
      t.integer :code
      t.string :name
      t.string :type

      t.timestamps
    end
  end
end
