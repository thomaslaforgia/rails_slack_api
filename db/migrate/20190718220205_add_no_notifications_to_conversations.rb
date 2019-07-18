class AddNoNotificationsToConversations < ActiveRecord::Migration[5.2]
  def change
    add_column :conversations, :no_notifications, :boolean
  end
end
