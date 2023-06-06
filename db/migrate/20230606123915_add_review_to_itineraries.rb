class AddReviewToItineraries < ActiveRecord::Migration[7.0]
  def change
    add_column :itineraries, :review, :text
  end
end
