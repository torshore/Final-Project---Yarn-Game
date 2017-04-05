class Addbodytextandimagetochoices < ActiveRecord::Migration[5.0]
  def change
      change_table :choices do |t|
        t.text :image
        t.string :panel_text
    end
  end
end
