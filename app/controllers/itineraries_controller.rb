class ItinerariesController < ApplicationController
  before_action :set_itinerary, only: %i[update]
  before_action :set_city, only: %i[update destroy]

  def index
    @itineraries = Itinerary.all
    @itinerary_activities = Activity.all
  end

  def show
    @itinerary = Itinerary.find(params[:id])
  end

  def new
    @itinerary = Itinerary.new
    @cities = City.all
  end

  def create
    @itinerary = Itinerary.new(itinerary_params)
    @itinerary.user = current_user
    if @itinerary.save
      redirect_to city_path(@itinerary.city_id), notice: 'Itinerary was successfully created.'
    else
      render :new
    end
  end

  def edit
    @itinerary = Itinerary.find(params[:id])
    @city = @itinerary.city_id
    @activities = Activity.where(city: @city)
  end

  def update
    @itinerary = Itinerary.find(params[:id])
    @activities = @city.activities
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
    params.require(:itinerary).permit(:user_id, :city_id, :start_date, :end_date, :title, :review, :visibility, :status)
  end
end
