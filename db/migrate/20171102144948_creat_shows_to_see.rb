class CreatShowsToSee < ActiveRecord::Migration[5.1]
  def change
    create_table :shows_to_see do |t|
      t.integer :user_id, null: false
      t.integer :show_id, null: false

      t.timestamps
    end
    add_index :shows_to_see, :user_id
    add_index :shows_to_see, :show_id
  end
end
