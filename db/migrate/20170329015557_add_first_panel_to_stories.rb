class AddFirstPanelToStories < ActiveRecord::Migration[5.0]
  def change
    change_table :stories do |t|
      t.integer :firstpanel
    end
  end
end