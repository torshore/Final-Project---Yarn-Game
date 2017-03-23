class CreateChoices < ActiveRecord::Migration[5.0]
  def change
    create_table :choices do |t|
      t.integer :panel_id
      t.integer :path_to
      t.string :body_text

      t.timestamps
    end
  end
end
