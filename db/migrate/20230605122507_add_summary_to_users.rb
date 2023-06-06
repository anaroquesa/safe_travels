class AddSummaryToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :summary, :text
  end
end
