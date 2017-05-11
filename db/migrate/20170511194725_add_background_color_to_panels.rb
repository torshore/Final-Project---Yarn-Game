class AddBackgroundColorToPanels < ActiveRecord::Migration[5.0]
  def change
      change_table :panels do |t|
      t.text :body_text_background_color
    end
  end
end
