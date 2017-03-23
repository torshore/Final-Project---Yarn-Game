class CreatePanels < ActiveRecord::Migration[5.0]
  def change
    create_table :panels do |t|
      t.integer :story_id
      t.string :image
      t.string :body_text
      t.integer :active_player

      t.timestamps
    end
  end
end
