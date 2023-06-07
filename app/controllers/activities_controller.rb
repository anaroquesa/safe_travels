class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all
  end

  def show
    @city = City.find(params[:city_id])
    @activity = Activity.find(params[:id])
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)
    @city = City.find(params[:city_id])
    @activity.city = @city

    if @activity.save!
      redirect_to itinerary_path alert: "Your activity has been saved."
    else
      render :new, status: :unprocessable_entity
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

  def activity_params
    params.require(:activity).permit(:title, :category, :address, :city_id)
  end
end
