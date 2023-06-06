class Activity < ApplicationRecord
  belongs_to :itinerary
  belongs_to :city
  validates :title, :address, presence: true
end
