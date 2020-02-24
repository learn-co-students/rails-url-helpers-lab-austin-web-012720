class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    @students = Student.find(params[:id])
  end

  def activate
    @student = Student.find(params[:id])
    @student.active = true
    @student.save
    redirect_to student_path(@student)
  end

  def update
    redirect_to action: "index"
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end