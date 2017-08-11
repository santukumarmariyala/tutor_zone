class Addcolumntostreamsubject < ActiveRecord::Migration[5.1]
  def change
    add_column :stream_subjects, :year, :string
  end
end
