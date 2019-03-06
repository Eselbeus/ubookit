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

ActiveRecord::Schema.define(version: 2019_03_06_182456) do

  create_table "bookings", force: :cascade do |t|
    t.string "name"
    t.datetime "start_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "venue_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "city"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "musicians", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.string "band_name"
    t.float "rating", default: 3.0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
  end

  create_table "performances", force: :cascade do |t|
    t.integer "musician_id"
    t.integer "venue_id"
    t.boolean "booked", default: false
    t.datetime "time"
    t.integer "feedback"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["musician_id"], name: "index_performances_on_musician_id"
    t.index ["venue_id"], name: "index_performances_on_venue_id"
  end

  create_table "venues", force: :cascade do |t|
    t.string "name"
    t.integer "location_id"
    t.string "email"
    t.string "username"
    t.string "password_digest"
    t.float "rating", default: 3.0
    t.integer "rental", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.index ["location_id"], name: "index_venues_on_location_id"
  end

end
