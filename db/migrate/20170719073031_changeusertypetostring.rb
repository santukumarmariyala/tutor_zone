class Changeusertypetostring < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :user_type, :string

  end
end
