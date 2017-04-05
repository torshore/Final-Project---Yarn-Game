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

ActiveRecord::Schema.define(version: 20170405033244) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "choices", force: :cascade do |t|
    t.integer  "panel_id"
    t.integer  "path_to"
    t.string   "body_text"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "story_id"
    t.text     "panel_title"
    t.integer  "index"
    t.integer  "index2"
  end

  create_table "panels", force: :cascade do |t|
    t.integer  "story_id"
    t.text     "image"
    t.string   "body_text"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "panel_title"
    t.integer  "index"
  end

  create_table "stories", force: :cascade do |t|
    t.text     "title"
    t.text     "tagline"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "image"
    t.integer  "firstpanel"
  end

end
