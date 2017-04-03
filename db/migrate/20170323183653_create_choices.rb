class CreateChoices < ActiveRecord::Migration[5.0]
  def change
    create_table :choices do |t|
      t.belongs_to :panels, index: true
      t.belongs_to :stories, index: true
      t.integer :panel_id
      t.integer :path_to
      t.string :body_text

      t.timestamps
    end
  end
end
