class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name, null: false
      t.integer :age
      t.belongs_to :mens_team, index: true, foreign_key: true
      t.belongs_to :coach, index: true, foreign_key: true

      t.timestamps
    end
  end
end
