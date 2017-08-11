class Changestreamidname < ActiveRecord::Migration[5.1]
  def change
    rename_column :subjects, :stream_id, :year_id
  end
end
