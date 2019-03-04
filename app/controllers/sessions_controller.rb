class SessionsController < ApplicationController
  def new
    @musician = Musician.find_by(email: params[:email])
  end

  def create
      @musician = Musician.find_by(email: params[:email])
      if @musician && @musician.authenticate(params[:password])
        session[:musician_id] = @musician.id
        redirect_to musician_path(@musician)
      else
        redirect_to new_session_path
      end
  end

  def destroy
    session[:musician_id] = nil
    flash[:success] = "Logged Out!"
    redirect_to "/login"
  end
end
