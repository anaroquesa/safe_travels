class CitiesController < ApplicationController
  def index
    if params[:query].present?
      sql_query = "name ILIKE :query"
      @cities = City.where(sql_query, query: "%#{params[:query]}%")
    else
      @cities = City.all
    end
  end

  def show
    @city = City.find(params[:id])
    @culture_activities = Activity.where(category: "Culture", city: @city)
    @art_activities = Activity.where(category: "Art", city: @city)
    @nature_activities = Activity.where(category: "Nature", city: @city)
    @food_activities = Activity.where(category: "Food", city: @city)
  end
end
