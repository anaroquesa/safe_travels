class CreateActivityRatings < ActiveRecord::Migration[7.0]
  def change
    create_table :activity_ratings do |t|
      t.references :activity, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :rating

      t.timestamps
    end
  end
end
