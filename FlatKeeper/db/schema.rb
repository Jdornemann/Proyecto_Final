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

ActiveRecord::Schema.define(version: 2019_05_23_025750) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cleaning_requests", force: :cascade do |t|
    t.integer "status_publishing"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "flat_detail_id"
    t.bigint "house_keeper_id"
    t.bigint "owner_id"
    t.index ["flat_detail_id"], name: "index_cleaning_requests_on_flat_detail_id"
    t.index ["house_keeper_id"], name: "index_cleaning_requests_on_house_keeper_id"
    t.index ["owner_id"], name: "index_cleaning_requests_on_owner_id"
  end

  create_table "coordinators", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_coordinators_on_email", unique: true
    t.index ["reset_password_token"], name: "index_coordinators_on_reset_password_token", unique: true
  end

  create_table "flat_details", force: :cascade do |t|
    t.integer "room_quantity"
    t.integer "bed_quantity"
    t.integer "bathroom_quantity"
    t.integer "dpto_size"
    t.string "floor"
    t.string "dpto_number"
    t.string "address"
    t.string "country"
    t.string "city"
    t.string "dpto_purpose"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name_alias"
  end

  create_table "house_keepers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_house_keepers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_house_keepers_on_reset_password_token", unique: true
  end

  create_table "owners", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_owners_on_email", unique: true
    t.index ["reset_password_token"], name: "index_owners_on_reset_password_token", unique: true
  end

  create_table "property_caterories", force: :cascade do |t|
    t.string "category"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "property_type_id"
    t.index ["property_type_id"], name: "index_property_caterories_on_property_type_id"
  end

  create_table "property_types", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "cleaning_requests", "flat_details"
  add_foreign_key "cleaning_requests", "house_keepers"
  add_foreign_key "cleaning_requests", "owners"
  add_foreign_key "property_caterories", "property_types"
end
