class CreateSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :subjects do |t|
      t.string :name
      t.text :description
      t.integer :stream_id

      t.timestamps
    end
  end
end
