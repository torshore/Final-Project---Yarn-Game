class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.integer :story_id
      t.text :art
      t.integer :player_number
      t.text :name
      t.integer :panel_id
      t.integer :choice_id

      t.timestamps
    end
  end
end
