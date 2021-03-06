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

ActiveRecord::Schema.define(version: 2020_01_03_194144) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "investments", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "company", null: false
    t.integer "principal", null: false
    t.float "interest_rate", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "num_years", null: false
    t.float "initial_total", null: false
    t.float "new_total"
    t.index ["user_id"], name: "index_investments_on_user_id"
  end

  create_table "totals", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "investment_id", null: false
    t.string "company", null: false
    t.float "current_total", null: false
    t.index ["investment_id"], name: "index_totals_on_investment_id"
    t.index ["user_id"], name: "index_totals_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "session_token", null: false
    t.string "password_digest", null: false
    t.index ["name"], name: "index_users_on_name"
    t.index ["session_token"], name: "index_users_on_session_token", unique: true
  end

end
