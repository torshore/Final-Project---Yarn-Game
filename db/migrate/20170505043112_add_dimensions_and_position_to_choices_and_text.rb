class AddDimensionsAndPositionToChoicesAndText < ActiveRecord::Migration[5.0]
  def change
      change_table :panels do |t|
      t.integer :body_text_position_x
      t.integer :body_text_position_y
      t.integer :choices_position_x
      t.integer :choices_position_y
      t.text :body_text_height
      t.text :body_text_width
      t.text :choices_height
      t.text :choices_width
    end
  end
end
