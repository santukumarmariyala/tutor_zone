class CreateStreams < ActiveRecord::Migration[5.1]
  def change
    create_table :streams do |t|
      t.string :name
      t.text :description
      t.integer :academic_type_id

      t.timestamps
    end
  end
end
