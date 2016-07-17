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

ActiveRecord::Schema.define(version: 20160626083345) do

  create_table "evas", force: :cascade do |t|
    t.integer  "dental_id",    limit: 4
    t.integer  "user_id",      limit: 4
    t.text     "user_comment", limit: 65535
    t.integer  "evaluation",   limit: 4
    t.boolean  "likeit"
    t.boolean  "go_want"
    t.datetime "create_date"
    t.datetime "update_date"
  end

  create_table "hospitals", force: :cascade do |t|
    t.integer  "dental_id",          limit: 4
    t.text     "dental_name",        limit: 65535
    t.text     "zip",                limit: 65535
    t.text     "region",             limit: 65535
    t.text     "city",               limit: 65535
    t.text     "address",            limit: 65535
    t.text     "building",           limit: 65535
    t.text     "tel",                limit: 65535
    t.text     "website",            limit: 65535
    t.boolean  "mon_am"
    t.boolean  "mon_pm"
    t.boolean  "tue_am"
    t.boolean  "tue_pm"
    t.boolean  "wed_am"
    t.boolean  "wed_pm"
    t.boolean  "thu_am"
    t.boolean  "thu_pm"
    t.boolean  "fri_am"
    t.boolean  "fri_pm"
    t.boolean  "sat_am"
    t.boolean  "sat_pm"
    t.boolean  "sun_am"
    t.boolean  "sun_pm"
    t.text     "time_other",         limit: 65535
    t.boolean  "genre_waittime"
    t.boolean  "genre_bridge"
    t.boolean  "genre_whitening"
    t.boolean  "genre_cleaning"
    t.boolean  "genre_implant"
    t.boolean  "genre_cosmetic"
    t.boolean  "genre_denture"
    t.boolean  "genre_ceramic"
    t.boolean  "genre_root"
    t.boolean  "genre_short"
    t.boolean  "genre_second"
    t.boolean  "genre_anesthesia"
    t.boolean  "genre_correction"
    t.boolean  "genre_child"
    t.boolean  "facility_large"
    t.boolean  "facility_emergency"
    t.boolean  "facility_kids"
    t.boolean  "facility_visit"
    t.boolean  "facility_ct"
    t.boolean  "facility_online"
    t.boolean  "pr"
    t.datetime "create_date"
    t.datetime "update_date"
  end

  create_table "pics", force: :cascade do |t|
    t.integer  "dental_id",         limit: 4
    t.string   "dental_pic",        limit: 255
    t.text     "dental_piccomment", limit: 65535
    t.datetime "create_date"
    t.datetime "update_date"
  end

  create_table "reps", force: :cascade do |t|
    t.integer  "dental_id",   limit: 4
    t.text     "rep_name",    limit: 65535
    t.string   "rep_photo",   limit: 255
    t.text     "rep_comment", limit: 65535
    t.text     "rep_career",  limit: 65535
    t.datetime "create_date"
    t.datetime "update_date"
  end

  create_table "users", force: :cascade do |t|
    t.integer  "user_id",     limit: 4
    t.string   "user_pic",    limit: 255
    t.datetime "create_date"
    t.datetime "update_date"
    t.string   "title",       limit: 255
    t.string   "description", limit: 255
    t.string   "address",     limit: 255
    t.float    "latitude",    limit: 24
    t.float    "longitude",   limit: 24
  end

end
