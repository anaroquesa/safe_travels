class ItActivity < ApplicationRecord
  belongs_to :activity
  belongs_to :itinerary
  # validates :activity_id, uniqueness: true
end
