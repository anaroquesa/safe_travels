class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :home, :cities ]

  def home
    @show_loading_screen = session[:show_loading_screen]
    session[:show_loading_screen] = false # Reset the flag
    @user = current_user
    if params[:query].present?
      sql_query = "name ILIKE :query"
      @cities = City.where(sql_query, query: "%#{params[:query]}%")
    else
      @cities = City.all
    end
  end

  def cities
    @city = City.find(params[:id])
    @cities = City.all
  end

  def profile
    @user = current_user
  end
end
