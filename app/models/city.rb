class City < ApplicationRecord
  has_many :activities
  has_many :itineraries
end
