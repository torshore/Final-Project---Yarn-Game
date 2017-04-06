class AddIndexToChoicesAndPanels < ActiveRecord::Migration[5.0]
  def change
    change_table :choices do |t|
      t.integer :index
    end
    change_table :panels do |t|
      t.integer :index
    end
  end
end