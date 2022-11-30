class AddNameToTeachers < ActiveRecord::Migration[7.0]
  def change
    add_column :teachers, :name, :string
    add_column :teachers, :surname, :string
    add_column :teachers, :second_surname, :string
    add_column :teachers, :username, :string
  end
end
