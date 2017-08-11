class Remove < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :user_type
    add_column :users, :user_type, :boolean
  end
end
