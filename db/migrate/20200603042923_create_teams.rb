class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :teamname
      t.string :date
      t.string :schedulemin
      t.string :schedulemax
      t.string :sport
      t.string :people

      t.timestamps
    end
  end
end
