class AddEditedToConversations < ActiveRecord::Migration[5.2]
  def change
    add_column :conversations, :edited, :boolean
  end
end
