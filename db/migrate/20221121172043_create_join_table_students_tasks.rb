class CreateJoinTableStudentsTasks < ActiveRecord::Migration[7.0]
  def change
    create_join_table :students, :tasks do |t|
      t.index [:student_id, :task_id]
      t.index [:task_id, :student_id]
    end
  end
end
