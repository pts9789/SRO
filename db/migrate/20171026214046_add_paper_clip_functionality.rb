class AddPaperClipFunctionality < ActiveRecord::Migration[5.1]
  def change
    remove_column :shows, :img_url
    
  end
end
