class AddStreamIdToSubjects < ActiveRecord::Migration[5.1]
  def change
    add_column :subjects, :stream_id, :integer
  end
end
