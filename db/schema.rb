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

ActiveRecord::Schema.define(version: 2019_10_25_125800) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "oils", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.string "kind"
    t.float "inr"
    t.float "eur"
    t.float "dol"
    t.string "genus_name"
    t.string "specific_epithet"
    t.boolean "fine_fragrance"
    t.boolean "personal_care"
    t.boolean "home_care"
    t.boolean "food"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.integer "s_no"
    t.float "mrp"
    t.boolean "bakery"
    t.boolean "icecream"
    t.boolean "soft_drink"
    t.boolean "other"
    t.text "description"
    t.boolean "disp"
    t.boolean "top_selling"
    t.boolean "powder"
    t.boolean "premium"
    t.boolean "sdc"
    t.boolean "chocolate"
    t.boolean "vanilla"
    t.boolean "fruit"
    t.boolean "indian"
    t.boolean "spice"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
