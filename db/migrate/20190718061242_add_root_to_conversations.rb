class AddRootToConversations < ActiveRecord::Migration[5.2]
  def change
    add_column :conversations, :root, :text
  end
end
