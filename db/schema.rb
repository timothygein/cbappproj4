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

ActiveRecord::Schema.define(version: 20171115202951) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "discographies", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fans", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "picture"
    t.string "title"
  end

  create_table "songs", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "picture"
    t.string "name"
    t.string "favorite_album"
    t.string "favorite_song"
    t.string "fan_since"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "profile_picture_file_name"
    t.string "profile_picture_content_type"
    t.integer "profile_picture_file_size"
    t.datetime "profile_picture_updated_at"
    t.string "profile_picture"
  end

end
