class ChangeDataTypeToActors < ActiveRecord::Migration[7.0]
  def change
    change_column :actors, :age, "numeric USING CAST(age AS numeric)"
    change_column :actors, :age, :integer
  end
end
