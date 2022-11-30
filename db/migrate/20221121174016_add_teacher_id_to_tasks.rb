class AddTeacherIdToTasks < ActiveRecord::Migration[7.0]
  def change
    add_reference :tasks, :teacher, null: false, foreign_key: true
  end
end
