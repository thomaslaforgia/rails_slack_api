class AddUsernameToConversations < ActiveRecord::Migration[5.2]
  def change
    add_column :conversations, :username, :string
  end
end
