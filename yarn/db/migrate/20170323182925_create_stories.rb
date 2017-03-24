class CreateStories < ActiveRecord::Migration[5.0]
  def change
    create_table :stories do |t|
      t.integer :user_id
      t.text :title
      t.text :tagline
      t.integer :number_of_players

      t.timestamps
    end
  end
end
