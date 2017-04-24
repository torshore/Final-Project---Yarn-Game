class AddImageToStories < ActiveRecord::Migration[5.0]
  def change
    change_table :stories do |t|
      t.text :image
    end
  end
end
