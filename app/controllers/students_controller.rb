class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id].to_i)
  end

  private 
  def student_params
    params.require(:students).permit(:id, :first_name, :last_name)
  end
end