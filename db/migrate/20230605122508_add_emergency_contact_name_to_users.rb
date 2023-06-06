class AddEmergencyContactNameToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :emergency_contact_name, :string
  end
end
