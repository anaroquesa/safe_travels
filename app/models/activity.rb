class Activity < ApplicationRecord
  belongs_to :city
  validates :title, :address, presence: true
end
