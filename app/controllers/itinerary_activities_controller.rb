class ItineraryActivitiesController < ApplicationController
  def show
    @itinerary_activity = ItineraryActivity(params[:id])
  end

  def index
    @activities = Activity.all
    @itinerary = Itinerary.find(params[:itinerary_id])
    @itinerary_activities = @activities.where(city_id: @itinerary.city_id)
  end

  def new
    @itinerary_activity = ItineraryActivity.new
    @itineraries = Itinerary.all
    @activities = Activity.all
  end

  def create
    @itinerary_activity = ItineraryActivity.new(params[:id, :itinerary_id, :activity_id])
    if @itinerary_activity.save!
      redirect_to itinerary_path(@itinerary_activity.itinerary_id), notice: 'New activity was added.'
    else
      render :new
    end
  end

  def destroy
    @itinerary_activity = ItineraryActivity.find(params[:id])
    @itinerary_activity.destroy!
    redirect_to itinerary_path(@itinerary_activity.itinerary_id)
  end
end
