class AddPinnedInfoToConversations < ActiveRecord::Migration[5.2]
  def change
    add_column :conversations, :pinned_info, :text
  end
end
