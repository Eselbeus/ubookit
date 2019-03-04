class MusiciansController < ApplicationController
  before_action :find_by_id, only: [:show, :edit, :update]

  def index
    @musicians = Musician.all
  end
  def show
  end
  def new
    @musician = Musician.new
  end

  def create
    @musician = Musician.create(musician_params)
    # raise params.inspect
    redirect_to @musician
  end

  def edit
  end
  def update
    @musician.update(musician_params)
    redirect_to @musician
  end


  private

  def find_by_id
    @musician = Musician.find(params[:id])
  end

  def musician_params
    params.require(:musician).permit(:name, :email, :password, :password_confirmation, :band_name)
  end
end
