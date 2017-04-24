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


ActiveRecord::Schema.define(version: 20170413191447) do


  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "choices", force: :cascade do |t|
    t.integer  "panels_id"
    t.integer  "stories_id"
    t.integer  "panel_id"
    t.integer  "path_to"
    t.string   "body_text"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "story_id"
    t.text     "panel_title"
    t.integer  "index"
    t.integer  "index2"
    t.text     "image"
    t.string   "panel_text"
    t.index ["panels_id"], name: "index_choices_on_panels_id", using: :btree
    t.index ["stories_id"], name: "index_choices_on_stories_id", using: :btree
  end

  create_table "panels", force: :cascade do |t|
    t.integer  "story_id"
    t.string   "body_text"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "panel_title"
    t.integer  "index"
    t.text     "image"
    t.index ["story_id"], name: "index_panels_on_story_id", using: :btree
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
