class AddItemTypeToConversations < ActiveRecord::Migration[5.2]
  def change
    add_column :conversations, :item_type, :string
  end
end
