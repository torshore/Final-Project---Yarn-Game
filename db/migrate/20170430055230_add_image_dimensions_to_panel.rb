class AddImageDimensionsToPanel < ActiveRecord::Migration[5.0]
  def change
      change_table :panels do |t|
      t.text :image_height
      t.text :image_width
    end
  end
end
