class FixReviewsTable < ActiveRecord::Migration[5.1]
  def change
    remove_column :reviews, :author_id
    add_column :reviews, :author_id, :integer
  end
end
