class TeraController < ApplicationController

  def login

  end

  def about

  end

  def contact

  end

  def create
    student = Student.find_by(userid: params[:tera][:userid])
    if student && student.authenticate(params[:tera][:password])
      session[:student_id] = student.id
      flash[:notice] = "successs"
      redirect_to home_path
    else
      flash[:notice] = "something is wrong"
      render 'login'
    end
  end

  def destroy
    session[:student_id] = nil
    flash[:notice] = "you have successfully logged out"
    redirect_to root_path
  end
end
