class ItinerariesController < ApplicationController
  before_action :set_city, only: %i[edit update destroy]
  before_action :set_itinerary, only: [:update]

  def index
    @itineraries = Itinerary.all
  end

  def show
    @itinerary = Itinerary.find(params[:id])
  end

  def new
    @itinerary = Itinerary.new
  end

  def create
    @itinerary = Itinerary.new(itinerary_params)
    @itinerary.user = current_user
    raise
    if @itinerary.save!
      redirect_to profile_path, alert: "Your request has been sent."
    else
      render :new, status: :unprocessable_entity
    end
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
    @itinerary = Itinerary.find(params[:id])
    @itinerary.destroy!
    redirect_to city_path(@city)
  end

  private

  def set_itinerary
    @itinerary = Itinerary.find(params[:id])
  end

  def set_city
    @city = City.find(params[:city_id])
  end

  def itinerary_params
    params.require(:itinerary).permit(:start_date, :end_date, :title)
  end
end
