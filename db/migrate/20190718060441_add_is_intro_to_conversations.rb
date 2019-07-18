class AddIsIntroToConversations < ActiveRecord::Migration[5.2]
  def change
    add_column :conversations, :is_intro, :boolean
  end
end
