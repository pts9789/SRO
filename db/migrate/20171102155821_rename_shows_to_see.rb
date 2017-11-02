class RenameShowsToSee < ActiveRecord::Migration[5.1]
  def change
    rename_table :shows_to_see, :shows_to_sees
  end
end
