class AddPanelTitleToPanels < ActiveRecord::Migration[5.0]
  def change
    change_table :panels do |t|
      t.text :panel_title
    end
  end
end