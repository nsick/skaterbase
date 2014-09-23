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

ActiveRecord::Schema.define(version: 20140921205052) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "skate_videos", force: true do |t|
    t.string   "videoname"
    t.integer  "videoyear"
    t.string   "videocompany"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skaters", force: true do |t|
    t.string   "fname"
    t.string   "lname"
    t.date     "dob"
    t.string   "city"
    t.integer  "state"
    t.string   "country"
    t.integer  "stance"
    t.integer  "status"
    t.integer  "height"
    t.integer  "weight"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "birthyear"
  end

  create_table "video_parts", force: true do |t|
    t.time     "runtime"
    t.string   "artist"
    t.string   "song"
    t.integer  "skater_id"
    t.integer  "skate_video_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "videoname"
  end

  add_index "video_parts", ["skate_video_id"], name: "index_video_parts_on_skate_video_id", using: :btree
  add_index "video_parts", ["skater_id"], name: "index_video_parts_on_skater_id", using: :btree

end
