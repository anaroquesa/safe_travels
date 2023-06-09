class Activity < ApplicationRecord
  belongs_to :city
  validates :title, :address, presence: true
  geocoded_by :address, through: :itactivities
  after_validation :geocode, if: :will_save_change_to_address?
end
