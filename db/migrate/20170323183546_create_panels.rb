class CreatePanels < ActiveRecord::Migration[5.0]
  def change
    create_table :panels do |t|
      t.belongs_to :story, index: true
      t.integer :story_id
      t.string :body_text
      t.timestamps
    end
  end
end
