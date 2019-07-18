class AddFilesToConversations < ActiveRecord::Migration[5.2]
  def change
    add_column :conversations, :files, :text
  end
end
