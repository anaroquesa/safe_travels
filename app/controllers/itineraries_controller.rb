class ItinerariesController < ApplicationController
  # before_action :set_city, only: %i[update]
  before_action :set_itinerary, only: [:edit, :update, :show]
  skip_forgery_protection


  def index
    @itineraries = Itinerary.all
    @ongoing_itineraries = current_user.itineraries.where("start_date <= ? AND end_date >= ?", Date.today, Date.today)
    @upcoming_itineraries = current_user.itineraries.where("start_date > ? AND end_date >= ?", Date.today, Date.today)
    @past_itineraries = current_user.itineraries.where("end_date < ?", Date.today)
  end

  def status_update
    @itinerary = Itinerary.find(params[:id])
    @itinerary.status = true
    @itinerary.save!
  end

  def show
    @activities = Activity.where(city_id: @itinerary.city_id)
    @itactivity = ItActivity.new
    @itactivities = ItActivity.where(itinerary_id: @itinerary.id)
    @city = @itinerary.city
    @cities = City.all
    @markers = @itactivities.map do |itactivity|
      {
        lat: itactivity.activity.latitude,
        lng: itactivity.activity.longitude
      }
    end

    @marker = [lat: @city.latitude, lng: @city.longitude]
  end

  def new
    @itinerary = Itinerary.new
    @cities = City.all
  end

  def create
    start_date = params[:itinerary][:start_date].split(" to ")[0]
    end_date = params[:itinerary][:start_date].split(" to ")[1]
    @itinerary = Itinerary.new(start_date: start_date, end_date: end_date, **itinerary_params)
    @itinerary.user = current_user
    if @itinerary.save!
      redirect_to @itinerary
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
      redirect_to itinerary_path(@itinerary)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @itinerary = Itinerary.find(params[:id])
    @itinerary.destroy
    redirect_to itineraries_url
  end


  private

  def set_itinerary
    @itinerary = Itinerary.find(params[:id])
  end

  def set_city
    @city = City.find(params[:city_id])
  end

  def itinerary_params
    start_date = params[:itinerary][:start_date].split(" to ")[0]
    end_date = params[:itinerary][:start_date].split(" to ")[1]
    params[:itinerary][:start_date] = start_date
    params[:itinerary][:end_date] = end_date
    params.require(:itinerary).permit(:user_id, :city_id, :title, :visibility, :status, :review, :start_date, :end_date)
  end
end
