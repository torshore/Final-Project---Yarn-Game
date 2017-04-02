class AddStoryIdToChoices < ActiveRecord::Migration[5.0]
  def change
    change_table :choices do |t|
      t.integer :story_id
    end
  end
end
