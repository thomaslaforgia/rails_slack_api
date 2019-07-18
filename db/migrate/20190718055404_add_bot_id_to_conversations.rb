class AddBotIdToConversations < ActiveRecord::Migration[5.2]
  def change
    add_column :conversations, :bot_id, :string
  end
end
