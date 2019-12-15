class CreateMensTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :mens_teams do |t|
      #validaation added to make sure level and division are not null
      t.string :level, null: false
      t.integer :no_of_players
      t.string :division, null: false

      t.timestamps
    end
  end
end
