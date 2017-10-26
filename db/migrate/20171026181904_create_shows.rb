class CreateShows < ActiveRecord::Migration[5.1]
  def change
    create_table :shows do |t|
      t.string :title, null: false
      t.string :type, null: false
      t.integer :year, null: false
      t.string :status, null: false
      t.string :theater_info, null: false
      t.text :critic_consesnsus
      t.string :img_url, null: false

      t.timestamps
    end
  end
end
