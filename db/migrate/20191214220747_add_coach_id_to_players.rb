class AddCoachIdToPlayers < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :coach_id, :integer
  end
end
