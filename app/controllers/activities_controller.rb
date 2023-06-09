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
  end

  def create
    @activity = Activity.new(activity_params)
    if @activity.save
      redirect_to @activity.city, notice: 'Activity was successfully created.'
    else
      render :new
    end
  end

  def edit
    @activity = Activity.find(params[:id])
  end

  def update
    @activity = Activity.find(params[:id])
    @activity.update(activity_params)
    redirect_to activities_path(@activity)
  end

  def destroy
    @activity = Activity.find(params[:id])
    @activity.destroy
    redirect_to activities_path, alert: 'Activity was successfully deleted.'
  end

  private

  def itinerary_params
    params.require(:itinerary).permit(:user_id, :city_id, :start_date, :end_date, :title, :visibility, :status, :review)
  end

  def activity_params
    params.require(:activity).permit(:city_id, :title, :address, :custom, :date)
  end
end
