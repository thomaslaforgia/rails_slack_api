class AddChannelToConversations < ActiveRecord::Migration[5.2]
  def change
    add_column :conversations, :channel, :string
  end
end
