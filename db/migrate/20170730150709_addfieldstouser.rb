class Addfieldstouser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :stream_id, :integer
    add_column :users, :academic_type_id, :integer
  end
end
