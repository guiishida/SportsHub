class ChangeNumeroUspNull < ActiveRecord::Migration[6.0]
  def change
    change_column_null(:users, :numeroUSP, false)
  end
end
