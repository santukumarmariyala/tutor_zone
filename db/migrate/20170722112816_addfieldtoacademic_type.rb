class AddfieldtoacademicType < ActiveRecord::Migration[5.1]
  def change
    add_column :academic_types, :abbreviation, :string
  end
end
