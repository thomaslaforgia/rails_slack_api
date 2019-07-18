class AddParentUserIdToConversations < ActiveRecord::Migration[5.2]
  def change
    add_column :conversations, :parent_user_id, :string
  end
end
