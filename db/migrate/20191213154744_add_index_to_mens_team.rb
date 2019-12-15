class AddIndexToMensTeam < ActiveRecord::Migration[5.2]
  def change
    #created an index on the level field in mens_teams table
    add_index :mens_teams, :level, unique: true
  end
end
