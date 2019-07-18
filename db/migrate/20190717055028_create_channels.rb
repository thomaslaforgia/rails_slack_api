class CreateChannels < ActiveRecord::Migration[5.2]
  def change
    create_table :channels do |t|
      t.string :uuid
      t.string :name
      t.boolean :is_channel
      t.integer :created
      t.boolean :is_archived
      t.boolean :is_general
      t.integer :unlinked
      t.string :creator
      t.string :name_normalized
      t.boolean :is_shared
      t.boolean :is_org_shared
      t.boolean :is_member
      t.boolean :is_private
      t.boolean :is_mpim
      t.text :members
      t.text :topic
      t.text :purpose
      t.text :previous_names
      t.integer :num_members
    end
  end
end
