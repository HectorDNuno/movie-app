class AddDirectorToMovie < ActiveRecord::Migration[7.0]
  def change
    add_column :movies, :director, :string
    add_column :movies, :english, :string
    change_column_null :movies, :english, true
  end
end
