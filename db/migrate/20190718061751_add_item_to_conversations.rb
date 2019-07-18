class AddItemToConversations < ActiveRecord::Migration[5.2]
  def change
    add_column :conversations, :item, :text
  end
end
