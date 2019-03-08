class PerformancesController < ApplicationController
  def index
    @venues = Venue.all
    @musicians = Musician.all
  end

  def show
    @performance = Performance.find(params[:id])
  end

  def new
    @performance = Performance.new
  end

  def create
    @performance = Performance.create(perfom_params)
    redirect_to @performance
  end

  def edit
    @performance = Performance.find(params[:id])
  end

  def update
    @performance = Performance.find(params[:id])
    @performance.update(perfom_params)
    redirect_to @performance
  end
  def destroy
    @performance = Performance.find(params[:id])
    @musician = @performance.musician_id
    @performance.destroy
    redirect_to "/musicians/#{@musician}"
  end
  
  private
    def perfom_params
      params.require(:performance).permit(:musician_id, :venue_id, :time, :booked)
    end
end

