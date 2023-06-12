class ItActivitiesController < ApplicationController
  def new
    @itinerary = Itinerary.find(params[:itinerary_id])
    @itactivity = ItActivity.find(params[:id])
  end

  def index
    @itactivities = ItActivity.all
  end

  def create
    @itinerary = Itinerary.find(params[:itinerary_id])
    @itactivity = ItActivity.new(it_activity_params)
    if @itactivity.save!
      redirect_to itinerary_path(@itinerary), notice: 'New activity was added to your itinerary.'
    else
      render :new
    end
  end

  def edit
    @itinerary = Itinerary.find(params[:itinerary_id])
    @itactivity = ItActivity.find(params[:id])
  end

  def update
    @itinerary = Itinerary.find(params[:itinerary_id])
    @itactivity = ItActivity.find(params[:id])
    if @itactivity.update(it_activity_params)
      redirect_to itinerary_path(@itinerary), notice: 'Activity date was successfully updated.'
    else
      render :edit
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
