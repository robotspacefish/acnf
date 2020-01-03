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

ActiveRecord::Schema.define(version: 2020_01_03_210911) do

  create_table "bugs", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.string "image_url"
    t.string "price"
    t.string "location"
    t.string "time"
    t.string "start_time"
    t.string "end_time"
    t.boolean "january"
    t.boolean "february"
    t.boolean "march"
    t.boolean "april"
    t.boolean "may"
    t.boolean "june"
    t.boolean "july"
    t.boolean "august"
    t.boolean "september"
    t.boolean "october"
    t.boolean "november"
    t.boolean "december"
  end

  create_table "deep_seas", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.string "image_url"
    t.string "price"
    t.string "shadow_size"
    t.string "time"
    t.string "start_time"
    t.string "end_time"
    t.boolean "january"
    t.boolean "february"
    t.boolean "march"
    t.boolean "april"
    t.boolean "may"
    t.boolean "june"
    t.boolean "july"
    t.boolean "august"
    t.boolean "september"
    t.boolean "october"
    t.boolean "november"
    t.boolean "december"
  end

  create_table "fishes", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.string "image_url"
    t.string "price"
    t.string "location"
    t.string "shadow_size"
    t.string "time"
    t.string "start_time"
    t.string "end_time"
    t.boolean "january"
    t.boolean "february"
    t.boolean "march"
    t.boolean "april"
    t.boolean "may"
    t.boolean "june"
    t.boolean "july"
    t.boolean "august"
    t.boolean "september"
    t.boolean "october"
    t.boolean "november"
    t.boolean "december"
  end

end
