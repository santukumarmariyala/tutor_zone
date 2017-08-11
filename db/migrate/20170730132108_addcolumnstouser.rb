class Addcolumnstouser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :mobile, :string
    add_column :users, :address, :text
    add_column :users, :location, :string
    add_column :users, :qualification, :string
    add_column :users, :experience, :string
  end
end
