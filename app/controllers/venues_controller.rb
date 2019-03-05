class VenuesController < ApplicationController
  before_action :find_venue, only: [:show]

  def index
    @venues = Venue.all
  end
  def show
  end
  def new
    @venue = Venue.new
  end
  def create
    @venue = Venue.new(venue_params)
    @venue.email.downcase!
    if @venue.save
      session[:venue_id] = venue.id
      flash[:notice] = "Successfully Created User!"
      redirect_to '/venues'
    else
      flash.now.alert = "Invalid email or password"
      redirect_to '/signup/venues'
    end  
  end




  private

  def find_venue
    @venue = Venue.find(params[:id])
  end

  def venue_params
    params.require(:venue).permit(:username, :email, :name, :password, :password_confirmation, :location_id)
  end
end
