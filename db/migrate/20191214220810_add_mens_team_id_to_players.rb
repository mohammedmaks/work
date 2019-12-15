class AddMensTeamIdToPlayers < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :mens_team_id, :integer
  end
end
