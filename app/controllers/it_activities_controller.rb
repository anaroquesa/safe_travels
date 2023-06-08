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
    @itactivity = ItActivity.new(itinerary_id: params[:itinerary_id], activity_id: params[:it_activity][:activity_id])
    if @itactivity.save!
      redirect_to itinerary_path(@itinerary), notice: 'New activity was added to your itinerary.'
    else
      render :new
    end
  end

  def destroy
    @itinerary = Itinerary.find(params[:itinerary_id])
    raise
    @itactivity = ItActivity.find(itactivity_params)
    @itactivity.destroy!
    redirect_to itinerary_path(@itinerary)
  end

  # def destroy
  #   @itinerary = Itinerary.find(params[:id])
  #   @itinerary.destroy
  #   redirect_to itineraries_url, notice: 'Itinerary was successfully deleted.'
  # end

  private

  def itactivity_params
    params.require(:itactivity).permit(:activity_id, :itinerary_id)
  end
end
