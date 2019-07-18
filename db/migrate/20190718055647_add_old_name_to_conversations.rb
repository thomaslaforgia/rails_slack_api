class AddOldNameToConversations < ActiveRecord::Migration[5.2]
  def change
    add_column :conversations, :old_name, :string
  end
end
