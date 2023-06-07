class CreateItineraries < ActiveRecord::Migration[7.0]
  def change
    create_table :itineraries do |t|
      t.references :user, null: false, foreign_key: true
      t.references :city, null: false, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.string :title
      t.text :review
      t.boolean :visibility, default: false
      t.boolean :status, default: false

      t.timestamps
    end
  end
end
