class Task < ApplicationRecord
    has_and_belongs_to_many :students
    belongs_to :teacher, optional: true 

    attr_accessor :student_elements

    def save_student
        students_array = student_elements.split(",")
        students_array.each do |student_username|
            s = Student.find_by_username(student_username)
            if self.students.find(student_username) == false
                self.students.push(s)
            end
        end
    end
end
