class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.references :itinerary, null: false, foreign_key: true
      t.references :city, null: false, foreign_key: true
      t.string :title
      t.string :category
      t.string :image_url
      t.string :address
      t.decimal :latitude
      t.decimal :longitude
      t.date :date

      t.timestamps
    end
  end
end
