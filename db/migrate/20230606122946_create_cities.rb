class CreateCities < ActiveRecord::Migration[7.0]
  def change
    create_table :cities do |t|
      t.string :name
      t.string :country
      t.string :image_url_one
      t.string :image_url_two
      t.string :image_url_three
      t.integer :safety_rating
      t.timestamps
    end
  end
end
