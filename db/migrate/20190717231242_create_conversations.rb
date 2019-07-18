class CreateConversations < ActiveRecord::Migration[5.2]
  def change
    create_table :conversations do |t|
      t.string :client_msg_id
      t.string :text
      t.string :subtype
      t.string :user
      t.string :ts
      t.string :team
      t.text :attachments
      t.string :thread_ts
      t.integer :reply_count
      t.integer :reply_users_count
      t.string :latest_reply
      t.text :reply_users
      t.text :replies
      t.boolean :subscribed
      t.text :reactions
      t.timestamps
    end
  end
end
