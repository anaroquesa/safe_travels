class City < ApplicationRecord
  has_many :activities
  has_many :itineraries
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
