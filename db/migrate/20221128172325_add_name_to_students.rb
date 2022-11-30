class AddNameToStudents < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :name, :string, null: false
    add_column :students, :surname, :string, null: false
    add_column :students, :second_surname, :string, null: false
    add_column :students, :username, :string, null: false, unique: true
  end
end
