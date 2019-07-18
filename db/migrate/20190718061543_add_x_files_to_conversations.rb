class AddXFilesToConversations < ActiveRecord::Migration[5.2]
  def change
    add_column :conversations, :x_files, :text
  end
end
