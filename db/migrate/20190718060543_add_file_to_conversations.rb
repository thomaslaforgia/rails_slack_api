class AddFileToConversations < ActiveRecord::Migration[5.2]
  def change
    add_column :conversations, :file, :text
  end
end
