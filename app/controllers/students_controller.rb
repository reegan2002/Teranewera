class StudentsController < ApplicationController
  def show
    @id = session[:student_id]
    if @id
      @student = Student.all
    else
      redirect_to root_path
    end
  end

  def home
    @id = session[:student_id]
    if @id
      @student = Student.find_by(id: @id)
    else
      redirect_to root_path
    end

  end

  def book
    @id = session[:student_id]
    if @id
      @student = Student.find_by(id: @id)
    else
      redirect_to root_path
    end
  end

  def profile
    @id = session[:student_id]
    if @id
      @student = Student.find_by(id: @id)
    else
      redirect_to root_path
    end
  end


  def new
    @id = session[:student_id]
    if @id == 1
      @student = Student.new
    else
      redirect_to home_path
    end
  end

  def create
    @student = Student.new(data)
    @student.save
    redirect_to home_path
  end



  private

  def data
      params.require(:student).permit(:userid,:password,:firstname,:lastname,:fathername,:dept,:year,:sem,:libid,:bgroup,:email,:mobno)
  end
end
