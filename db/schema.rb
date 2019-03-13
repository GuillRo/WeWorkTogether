# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_03_13_151155) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "booking_places", force: :cascade do |t|
    t.bigint "booking_id"
    t.bigint "place_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_booking_places_on_booking_id"
    t.index ["place_id"], name: "index_booking_places_on_place_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.datetime "beginning_date"
    t.datetime "end_date"
    t.float "price"
    t.boolean "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "payments", force: :cascade do |t|
    t.float "price"
    t.string "workspace_address"
    t.bigint "booking_id"
    t.string "payment_json"
    t.bigint "renter_id"
    t.bigint "owner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_payments_on_booking_id"
    t.index ["owner_id"], name: "index_payments_on_owner_id"
    t.index ["renter_id"], name: "index_payments_on_renter_id"
  end

  create_table "photos", force: :cascade do |t|
    t.bigint "workspace_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["workspace_id"], name: "index_photos_on_workspace_id"
  end

  create_table "places", force: :cascade do |t|
    t.bigint "workspace_id"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "number_of_chairs"
    t.text "description"
    t.string "name"
    t.index ["workspace_id"], name: "index_places_on_workspace_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "photo"
    t.text "bio"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "service_lists", force: :cascade do |t|
    t.bigint "service_id"
    t.bigint "workspace_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["service_id"], name: "index_service_lists_on_service_id"
    t.index ["workspace_id"], name: "index_service_lists_on_workspace_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_reviews", force: :cascade do |t|
    t.integer "score"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "booking_id"
    t.index ["booking_id"], name: "index_user_reviews_on_booking_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "workspace_reviews", force: :cascade do |t|
    t.integer "score"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "booking_id"
    t.index ["booking_id"], name: "index_workspace_reviews_on_booking_id"
  end

  create_table "workspaces", force: :cascade do |t|
    t.bigint "user_id"
    t.text "description"
    t.string "address"
    t.string "title"
    t.string "website"
    t.string "phone_number"
    t.float "longitude"
    t.float "latitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_workspaces_on_user_id"
  end

  add_foreign_key "booking_places", "bookings"
  add_foreign_key "booking_places", "places"
  add_foreign_key "bookings", "users"
  add_foreign_key "payments", "bookings"
  add_foreign_key "photos", "workspaces"
  add_foreign_key "places", "workspaces"
  add_foreign_key "profiles", "users"
  add_foreign_key "service_lists", "services"
  add_foreign_key "service_lists", "workspaces"
  add_foreign_key "user_reviews", "bookings"
  add_foreign_key "workspace_reviews", "bookings"
  add_foreign_key "workspaces", "users"
end
