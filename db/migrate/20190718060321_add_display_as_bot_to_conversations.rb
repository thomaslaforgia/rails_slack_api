class AddDisplayAsBotToConversations < ActiveRecord::Migration[5.2]
  def change
    add_column :conversations, :display_as_bot, :boolean
  end
end
