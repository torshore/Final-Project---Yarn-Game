class AddPanelTitletoChoices < ActiveRecord::Migration[5.0]
  def change
    change_table :choices do |t|
      t.text :panel_title
    end
  end
end
