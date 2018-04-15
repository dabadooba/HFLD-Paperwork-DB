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

ActiveRecord::Schema.define(version: 2018_04_15_003058) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "colors", force: :cascade do |t|
    t.string "gel_num"
    t.string "gel_name"
    t.string "gel_hex"
    t.integer "manufacturer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "colors_spotlights", id: false, force: :cascade do |t|
    t.bigint "spotlight_id", null: false
    t.bigint "color_id", null: false
  end

  create_table "gel_manufacturers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spotlight_cue_data", force: :cascade do |t|
    t.integer "spotlight_id"
    t.integer "color"
    t.integer "size"
    t.integer "intensity"
    t.integer "time"
    t.text "pickup"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spotlight_cues", force: :cascade do |t|
    t.integer "lxq"
    t.float "q"
    t.text "cueInfo"
    t.boolean "scene"
    t.boolean "song"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spotlights", force: :cascade do |t|
    t.string "name"
    t.integer "spotlight_op"
    t.text "spotlight_notes"
    t.integer "spotlight_position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
