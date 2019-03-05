class SessionsController < ApplicationController
  def new
    @musician = Musician.find_by(email: params[:email])
    @venue = Venue.find_by(email:params[:email])
  end

  def create
    musician = Musician.find_by_email(params[:email])
    venue - Venue.find_by_email(params[:email])
    if musician && musician.authenticate(params[:password])
      session[:musician_id] = musician.id
      redirect_to '/musicians', notice: 'Logged in!'
    else
      flash.now.alert = "Incorrect email or password, Please try again."
      redirect_to '/login'
    end

    if venue && venue.authenticate(params[:password])
      session[:venue_id] = venue.id
      redirect_to '/venues', notice: "Logged In!"
    else
      flash.now.alert = "Incorrect email or password"
      redirect_to '/login'
    end
  end

  def destroy
    if session[:musician_id] = nil
      flash[:success] = "Logged Out!"
      redirect_to "/login", notice: "Logged Out!"
    else
      session[:venue_id] = nil
      flash[:success] = "Logged Out!"
      redirect_to "/login"
    end
  end
end
