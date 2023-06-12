class ItActivitiesController < ApplicationController
  def new
    @itinerary = Itinerary.find(params[:itinerary_id])
    @itactivity = ItActivity.find(params[:id])
  end

  def index
    @itactivities = ItActviity.all
  end

  def create
    @itinerary = Itinerary.find(params[:itinerary_id])
    @itactivity = ItActivity.new(itinerary_id: params[:itinerary_id], activity_id: params[:it_activity][:activity_id], date: params[:date] )
    if @itactivity.save!
      redirect_to itinerary_path(@itinerary), notice: 'New activity was added to your itinerary.'
    else
      render :new
    end
  end

  def destroy
    @itinerary = Itinerary.find(params[:itinerary_id])
    @itactivity = ItActivity.find(params[:id])
    @itactivity.destroy!
    redirect_to itinerary_path(@itinerary)
  end

  private

  def it_activity_params
    params.require(:it_activity).permit(:activity_id, :itinerary_id, :date)
  end
end
