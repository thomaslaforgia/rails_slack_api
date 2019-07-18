class AddCommentToConversations < ActiveRecord::Migration[5.2]
  def change
    add_column :conversations, :comment, :text
  end
end
