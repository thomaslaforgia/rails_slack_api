class AddUploadReplyToToConversations < ActiveRecord::Migration[5.2]
  def change
    add_column :conversations, :upload_reply_to, :string
  end
end
