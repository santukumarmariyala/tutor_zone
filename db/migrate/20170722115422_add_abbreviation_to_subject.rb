class AddAbbreviationToSubject < ActiveRecord::Migration[5.1]
  def change
    add_column :subjects, :abbreviation, :string
  end
end
