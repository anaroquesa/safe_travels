class CreateItActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :it_activities do |t|
      t.references :activity, null: false, foreign_key: true
      t.references :itinerary, null: false, foreign_key: true

      t.timestamps
    end
  end
end
