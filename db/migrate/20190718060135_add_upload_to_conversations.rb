class AddUploadToConversations < ActiveRecord::Migration[5.2]
  def change
    add_column :conversations, :upload, :boolean
  end
end
