class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all
  end
  def show
    @city = City.find(params[:city_id])
    @activity = Activity.find(params[:id])
  end

  def new
    @city = City.find(params[:city_id])
    @activity = @city.activities.new
    @itinerary_id = params[:itinerary_id]
  end

  def create
    @activity = Activity.new(activity_params)
    if @activity.save!
      ItActivity.create!(activity_id: @activity.id, itinerary_id: params[:activity][:itinerary_id], date: @activity.date )
      redirect_to itinerary_path(params[:activity][:itinerary_id] )
    else
      render :new
    end
  end

  def edit
    @activity = Activity.find(params[:id])
  end

  def update
    @activity = Activity.find(params[:id])
    @activity.update!(activity_params)
    redirect_to activity_path(@activity)
  end

  def destroy
    @activity = Activity.find(params[:id])
    @activity.destroy
    redirect_to activities_path
  end

  private

  def itinerary_params
    params.require(:itinerary).permit(:user_id, :city_id, :start_date, :end_date, :title, :visibility, :status, :review)
  end

  def activity_params
    params.require(:activity).permit(:city_id, :title, :address, :custom, :date)
  end
end
