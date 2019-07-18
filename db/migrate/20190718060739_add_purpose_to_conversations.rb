class AddPurposeToConversations < ActiveRecord::Migration[5.2]
  def change
    add_column :conversations, :purpose, :string
  end
end
