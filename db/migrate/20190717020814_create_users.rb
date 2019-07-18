class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :uuid
      t.string :name
      t.string :team_id
      t.boolean :deleted
      t.string :color
      t.string :real_name
      t.string :tz
      t.string :tz_label
      t.integer :tz_offset
      t.text :profile
      t.boolean :is_admin
      t.boolean :is_owner
      t.boolean :is_primary_owner
      t.boolean :is_restricted
      t.boolean :is_ultra_restricted
      t.boolean :is_bot
      t.boolean :is_app_user
      t.integer :updated
      t.timestamps
    end
  end
end
