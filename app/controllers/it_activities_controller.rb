class ItActivitiesController < ApplicationController
  def new
    @itinerary = Itinerary.find(params[:itinerary_id])
    @itactivity = ItActivity(params[:id])
  end

  def index
    @itactivities = ItActviity.all
  end

  def create
    @itinerary = Itinerary.find(params[:itinerary_id])
    @itactivity = ItActivity.new(itactivity_params)
    @itactivity.itinerary = @itinerary
    if @itactivity.save!
      redirect_to itinerary_path(@itinerary), notice: 'New activity was added to your itinerary.'
    else
      render :new
    end
  end

  def destroy
    @itinerary = Itinerary.find(params[:itinerary_id])
    @itactivity = Itactivity.find(params[:id])
    @itactivity.destroy!
    redirect_to itinerary_path(@itinerary)
  end

  private

  def itactivity_params
    params.require(:itactivity).permit(:activity_id, :itinerary_id)
  end
end
