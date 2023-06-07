class ItinerariesController < ApplicationController
  # before_action :set_itinerary

  def index
  end

  def show
  end

  def new
    @itinerary = Itinerary.new
  end

  def create
    @itinerary = Itinerary.new(itinerary_params)
    @itinerary.user = current_user
    raise
    if @itinerary.save!
      redirect_to profile_path, alert: "Your request has been sent."
    else
      render :new, status: :unprocessable_entity
    end

  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_itinerary
    @itinerary = Itinerary.find(params[:id])
  end

  def itinerary_params
    params.require(:itinerary).permit(:start_date, :end_date, :title)
  end
end
