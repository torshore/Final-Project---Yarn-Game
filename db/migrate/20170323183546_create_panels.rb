class CreatePanels < ActiveRecord::Migration[5.0]
  def change
    create_table :panels do |t|
      t.integer :story_id
      t.text :image
      t.string :body_text
      t.integer :player_id

      t.timestamps
    end
  end
end
