class City < ApplicationRecord
  has_many :activities, dependent: :destroy
  has_many :itineraries, dependent: :destroy
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
