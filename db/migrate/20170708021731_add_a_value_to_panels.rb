class AddAValueToPanels < ActiveRecord::Migration[5.0]
  def change
      change_table :panels do |t|
      t.float :a_value
    end
  end
end

