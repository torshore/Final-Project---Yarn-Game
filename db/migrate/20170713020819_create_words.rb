class CreateWords < ActiveRecord::Migration[5.0]
  def change
    create_table :words do |t|
      t.text :content
      t.integer :panel_id
      t.integer :index

      t.timestamps
    end
  end
end
