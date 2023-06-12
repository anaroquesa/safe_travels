class AddDateToItActivities < ActiveRecord::Migration[7.0]
  def change
    add_column :it_activities, :date, :date
  end
end
