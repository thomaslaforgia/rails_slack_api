class AddBotLinkToConversations < ActiveRecord::Migration[5.2]
  def change
    add_column :conversations, :bot_link, :string
  end
end
