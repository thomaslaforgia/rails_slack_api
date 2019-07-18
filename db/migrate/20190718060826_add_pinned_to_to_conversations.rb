class AddPinnedToToConversations < ActiveRecord::Migration[5.2]
  def change
    add_column :conversations, :pinned_to, :text
  end
end
