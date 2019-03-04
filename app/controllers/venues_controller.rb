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
    @venue = Venue.create(venue_params)
    redirect_to @venue
  end




  private

  def find_venue
    @venue = Venue.find(params[:id])
  end

  def venue_params
    params.require(:venue).permit(:username, :email, :name, :password, :password_confirmation, :location_id)
  end
end
