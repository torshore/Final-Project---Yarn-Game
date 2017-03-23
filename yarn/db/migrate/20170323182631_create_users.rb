class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.text :username
      t.text :email
      t.text :password
      t.string :avatar_url

      t.timestamps
    end
  end
end
