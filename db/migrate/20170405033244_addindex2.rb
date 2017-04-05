class Addindex2 < ActiveRecord::Migration[5.0]
  def change
      change_table :choices do |t|
      t.integer :index2
    end
  end
end
