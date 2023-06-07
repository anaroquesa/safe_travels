class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @user = current_user
  end

  def cities
    @city = City.find(params[:id])
    @cities = City.all
  end
end
