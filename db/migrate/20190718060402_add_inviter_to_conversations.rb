class AddInviterToConversations < ActiveRecord::Migration[5.2]
  def change
    add_column :conversations, :inviter, :string
  end
end
