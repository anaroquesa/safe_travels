class AddCustomToActivities < ActiveRecord::Migration[7.0]
  def change
    add_column :activities, :custom, :boolean, default: false
  end
end
