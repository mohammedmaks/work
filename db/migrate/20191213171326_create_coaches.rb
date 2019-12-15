class CreateCoaches < ActiveRecord::Migration[5.2]
  def change
    create_table :coaches do |t|
      t.string :coach_name
      t.belongs_to :mens_team, index: true, foreign_key: true, null: false

      t.timestamps
    end
  end
end
