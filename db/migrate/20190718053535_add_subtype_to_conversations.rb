class AddSubtypeToConversations < ActiveRecord::Migration[5.2]
  def change
    add_column :conversations, :subtype, :string
  end
end
