class ItinerariesController < ApplicationController
  before_action :set_itinerary

  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
    @itinerary = Itinerary.find(params[:id])
    @itinerary.city = @city
    @itinerary.user = current_user
  end

  def update
    @itinerary = Itinerary.find(params[:id])
    if @itinerary.update(itinerary_params)
      redirect_to itinerary_path(@itinerary)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
  end

  private

  def set_city
    @city = City.find(params[:city_id])
  end

  def itinerary_params
    params.require(:itinerary).permit(:start_date, :end_date, :title)
  end
end
