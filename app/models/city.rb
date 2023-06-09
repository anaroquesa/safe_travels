class City < ApplicationRecord
  has_many :activities
  geocoded_by :longitude, :latitude
  after_validation :geocode

  def index
    @cities = City.all
    @markers = @cities.geocoded.map do |city|
      {
        lat: city.latitude,
        lng: city.longitude
      }
    end
  end
end
