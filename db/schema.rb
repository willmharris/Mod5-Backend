# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_24_063540) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cases", force: :cascade do |t|
    t.boolean "active"
    t.datetime "planned_date"
    t.string "planned_location"
    t.datetime "confirmed_date"
    t.string "confirmed_location"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.datetime "date"
    t.string "location"
    t.integer "case_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_cases", force: :cascade do |t|
    t.integer "user_id"
    t.integer "case_id"
    t.datetime "first_contact_date"
    t.integer "first_contact_status"
    t.datetime "second_contact_date"
    t.integer "second_contact_status"
    t.datetime "third_contact_date"
    t.integer "third_contact_status"
    t.boolean "planned_session_confirmed"
    t.integer "team"
    t.string "team_relationship"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer "account_type"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.bigint "phone_number"
    t.bigint "zip_code"
    t.boolean "lead_active"
    t.boolean "call_scheduled"
    t.datetime "first_contact_date"
    t.integer "first_contact_status"
    t.datetime "second_contact_date"
    t.integer "second_contact_status"
    t.datetime "third_contact_date"
    t.integer "third_contact_status"
    t.integer "entry_point"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
