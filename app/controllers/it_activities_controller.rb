class ItActivitiesController < ApplicationController
  def show
    @itactivity = ItActivity(params[:id])
  end

  def index
    @activities = Activity.all
    @itinerary = Itinerary.find(params[:itinerary_id])
    @itactivities = @activities.where(city_id: @itinerary.city_id)
  end

  def new
    @itactivity = ItActivity.new
    @itineraries = Itinerary.all
    @activities = Activity.all
  end

  def create
    @itactivity = ItActivity.new(params[:id, :itinerary_id, :activity_id])
    if @itactivity.save!
      redirect_to itinerary_path(@itactivity.itinerary_id), notice: 'New activity was added.'
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
