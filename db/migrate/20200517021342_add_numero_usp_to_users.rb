class AddNumeroUspToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :numeroUSP, :bigint
  end
end
