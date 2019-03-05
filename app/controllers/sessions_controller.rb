class SessionsController < ApplicationController
  def new
    @musician = Musician.find_by(email: params[:email])
  end

  def create
    musician = Musician.find_by_email(params[:email])
    if musician && musician.authenticate(params[:password])
      session[:musician_id] = musician.id
      redirect_to '/musicians', notice: 'Logged in!'
    else
      flash.now.alert = "Incorrect email or password, Please try again."
      redirect_to '/login'
    end
  end

  def destroy
    session[:musician_id] = nil
    flash[:success] = "Logged Out!"
    redirect_to "/login", notice: "Logged Out!"
  end
end
