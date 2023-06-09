# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_06_08_153417) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.bigint "city_id", null: false
    t.string "title"
    t.string "category"
    t.string "image_url"
    t.string "address"
    t.decimal "latitude"
    t.decimal "longitude"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_activities_on_city_id"
  end

  create_table "activity_ratings", force: :cascade do |t|
    t.bigint "activity_id", null: false
    t.bigint "user_id", null: false
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_activity_ratings_on_activity_id"
    t.index ["user_id"], name: "index_activity_ratings_on_user_id"
  end

  create_table "chatrooms", force: :cascade do |t|
    t.integer "user1"
    t.integer "user2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.string "country"
    t.string "image_url_one"
    t.string "image_url_two"
    t.string "image_url_three"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "latitude"
    t.float "longitude"
    t.string "address"
  end

  create_table "it_activities", force: :cascade do |t|
    t.bigint "activity_id", null: false
    t.bigint "itinerary_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_it_activities_on_activity_id"
    t.index ["itinerary_id"], name: "index_it_activities_on_itinerary_id"
  end

  create_table "itineraries", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "city_id", null: false
    t.date "start_date"
    t.date "end_date"
    t.string "title"
    t.text "review"
    t.boolean "visibility", default: false
    t.boolean "status", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_itineraries_on_city_id"
    t.index ["user_id"], name: "index_itineraries_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "chatroom_id", null: false
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chatroom_id"], name: "index_messages_on_chatroom_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "photo"
    t.text "summary"
    t.string "emergency_contact_name"
    t.string "emergency_contact_number"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "activities", "cities"
  add_foreign_key "activity_ratings", "activities"
  add_foreign_key "activity_ratings", "users"
  add_foreign_key "chatrooms", "users", column: "user1"
  add_foreign_key "chatrooms", "users", column: "user2"
  add_foreign_key "it_activities", "activities"
  add_foreign_key "it_activities", "itineraries"
  add_foreign_key "itineraries", "cities"
  add_foreign_key "itineraries", "users"
  add_foreign_key "messages", "chatrooms"
  add_foreign_key "messages", "users"
end
