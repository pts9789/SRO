class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :type, null: false
      t.string :author_name, null: false
      t.text :body, null: false
      t.integer :score, null: false
      t.integer :show_id, null: false
      t.string :author_id
      t.string :publication
      t.text :link_to_review
       
      t.timestamps
    end
  end
end
