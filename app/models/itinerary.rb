class Itinerary < ApplicationRecord
  belongs_to :user
  belongs_to :city
  has_many :activities
  validates :title, :start_date, :end_date, presence: true
end
