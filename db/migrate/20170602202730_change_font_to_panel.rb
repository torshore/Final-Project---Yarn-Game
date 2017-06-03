class ChangeFontToPanel < ActiveRecord::Migration[5.0]
  def change
      change_table :panels do |t|
      t.text :font_family
    end
  end
end
