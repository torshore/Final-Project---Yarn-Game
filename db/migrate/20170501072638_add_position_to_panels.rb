class AddPositionToPanels < ActiveRecord::Migration[5.0]
  def change
      change_table :panels do |t|
      t.integer :image_position_x
      t.integer :image_position_y
    end
  end
end
