class CreateSports < ActiveRecord::Migration[6.0]
  def change
    create_table :sports do |t|
      t.integer :code
      t.string :name

      t.timestamps
    end
  end
end
