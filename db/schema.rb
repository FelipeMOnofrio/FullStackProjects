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

ActiveRecord::Schema.define(version: 20180313162735) do

  create_table "neighbourhood_has_ward_has_services", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "ward_id"
    t.integer "neighbourhood_id"
    t.integer "service_id"
    t.index ["neighbourhood_id"], name: "index_neighbourhood_has_ward_has_services_on_neighbourhood_id"
    t.index ["service_id"], name: "index_neighbourhood_has_ward_has_services_on_service_id"
    t.index ["ward_id"], name: "index_neighbourhood_has_ward_has_services_on_ward_id"
  end

  create_table "neighbourhoods", force: :cascade do |t|
    t.string "neighbourhood"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parking_contraventions", force: :cascade do |t|
    t.datetime "issue_date"
    t.integer "ticket_number"
    t.string "street"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "violation_id"
    t.index ["violation_id"], name: "index_parking_contraventions_on_violation_id"
  end

  create_table "service_areas", force: :cascade do |t|
    t.string "service_area"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "service_requests", force: :cascade do |t|
    t.string "service_request"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "service_area_id"
    t.index ["service_area_id"], name: "index_service_requests_on_service_area_id"
  end

  create_table "services", force: :cascade do |t|
    t.datetime "sr_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "service_request_id"
    t.index ["service_request_id"], name: "index_services_on_service_request_id"
  end

  create_table "violations", force: :cascade do |t|
    t.string "violation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wards", force: :cascade do |t|
    t.string "ward"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
