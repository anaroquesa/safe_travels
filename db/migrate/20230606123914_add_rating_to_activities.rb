class AddRatingToActivities < ActiveRecord::Migration[7.0]
  def change
    add_column :activities, :rating, :integer
  end
end
