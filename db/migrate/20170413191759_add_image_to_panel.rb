class AddImageToPanel < ActiveRecord::Migration[5.0]
  def change
    change_table :panels do |t|
      t.text :image
    end
  end
end
