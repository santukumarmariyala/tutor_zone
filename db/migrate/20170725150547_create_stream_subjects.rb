class CreateStreamSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :stream_subjects do |t|
      t.integer :stream_id
      t.integer :subject_id

      t.timestamps
    end
  end
end
