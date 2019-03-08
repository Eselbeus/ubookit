class MusiciansController < ApplicationController
  before_action :get_musician, only: [:show, :edit, :update]

  def index
    @musicians = Musician.all
  end
  def show
    
  end
  def new
    @musician = Musician.new
  end

  def create
    @musician = Musician.new(musician_params)
    @musician.email.downcase!
    if @musician.save
      session[:musician_id] = @musician.id
      flash[:notice] = "Successfully Created User!"
      redirect_to '/musicians'
    else
      flash.now.alert = "Invalid Email or Password"
      redirect_to '/signup/musicians'
    end
  end

  def edit
  end
  def update
    @musician.update(musician_params)
    redirect_to @musician
  end

  # def decrease_rating
  #   @musician = Musician.find(params[:id])
  #   @musician.rating -= 0.1
  # end


  private

  def get_musician
    @musician = Musician.find(params[:id])
  end

  def musician_params
    params.require(:musician).permit(:name, :email, :password, :password_confirmation, :band_name)
  end
end
