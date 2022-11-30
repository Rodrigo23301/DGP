class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find_by_id(params[:id])
  end
  
  def edit
    @student = Student.find_by_id(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    if @student.update(student_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def student_params
    params.require(:student).permit(:email, :password, :name, :username, :surname, :second_surname)
  end
end
