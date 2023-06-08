class ItinerariesController < ApplicationController
  # before_action :set_city, only: %i[update]
  before_action :set_itinerary, only: [:edit, :update, :show]

  def index
    @itineraries = Itinerary.all
    @ongoing_itineraries = current_user.itineraries.where("start_date >= ? AND end_date >= ?", Date.today, Date.today)
    @past_itineraries = current_user.itineraries.where("end_date < ?", Date.today)
  end

  def show
    @activities = Activity.where(city_id: @itinerary.city_id)
    @itactivity = ItActivity.new
    @itactivities = ItActivity.all
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
    @city = @itinerary.city
    @itinerary.user = current_user
  end

  def update
    if @itinerary.update(itinerary_params)
      redirect_to itinerary_path(@itinerary), notice: "Itinerary updated successfully."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @itinerary = Itinerary.find(params[:id])
    @itinerary.destroy
    redirect_to itineraries_url, notice: 'Itinerary was successfully deleted.'
  end


  private

  def set_itinerary
    @itinerary = Itinerary.find(params[:id])
  end

  def set_city
    @city = City.find(params[:city_id])
  end

  def itinerary_params
    params.require(:itinerary).permit(:user_id, :city_id, :start_date, :end_date, :title, :visibility, :status, :review)
  end

end
