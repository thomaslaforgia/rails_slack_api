class AddIconsToConversations < ActiveRecord::Migration[5.2]
  def change
    add_column :conversations, :icons, :text
  end
end
