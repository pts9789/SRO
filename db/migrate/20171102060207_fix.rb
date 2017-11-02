class Fix < ActiveRecord::Migration[5.1]
  def change
    remove_column :reviews, :author_id
    add_column :reviews, :author_id, :text
  end
end
