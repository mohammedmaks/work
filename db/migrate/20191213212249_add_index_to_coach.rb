class AddIndexToCoach < ActiveRecord::Migration[5.2]
  def change
    add_index :coaches, :coach_name 
  end
end
