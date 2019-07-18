class AddHiddenToConversations < ActiveRecord::Migration[5.2]
  def change
    add_column :conversations, :hidden, :boolean
  end
end
