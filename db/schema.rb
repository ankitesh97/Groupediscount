# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151206094606) do

  create_table "apis", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "builders", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.string   "company"
    t.string   "phone1"
    t.string   "phone2"
    t.string   "email1"
    t.string   "email2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cats", force: :cascade do |t|
    t.string   "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string   "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "cz_id"
    t.integer  "state_id"
  end

  create_table "cityzones", force: :cascade do |t|
    t.string   "cityzone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "city_id"
  end

  create_table "proj_cats", force: :cascade do |t|
    t.string   "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_categories", force: :cascade do |t|
    t.string   "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "Project_name"
    t.string   "address"
    t.string   "latitude"
    t.string   "longitude"
    t.string   "size"
    t.string   "total_area"
    t.string   "launch_date"
    t.string   "possesion_date"
    t.string   "price"
    t.string   "price_per_sq_feet"
    t.boolean  "offer"
    t.string   "overview"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "builder_id"
    t.integer  "state_id"
    t.integer  "city_id"
    t.integer  "cityzone_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "cat_id"
    t.integer  "status_id"
    t.string   "location"
  end

  create_table "states", force: :cascade do |t|
    t.string   "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "city_id"
  end

  create_table "statuses", force: :cascade do |t|
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "temporaries", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "testtests", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "venues", force: :cascade do |t|
    t.string   "venueid"
    t.string   "venueName"
    t.string   "venueAddress"
    t.string   "venueCity"
    t.string   "venueState"
    t.integer  "venueZip"
    t.string   "venuePhone"
    t.integer  "venueAge"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
