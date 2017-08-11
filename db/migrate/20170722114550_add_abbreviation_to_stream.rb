class AddAbbreviationToStream < ActiveRecord::Migration[5.1]
  def change
    add_column :streams, :abbreviation, :string
  end
end
