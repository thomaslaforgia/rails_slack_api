class AddHas2faToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :has_2fa, :boolean
  end
end
