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

ActiveRecord::Schema.define(version: 2020_02_13_082313) do

  create_table "creaters", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "kana_name"
    t.string "address"
    t.text "introduction"
    t.text "skill"
    t.integer "career", default: 0, null: false
    t.integer "cost", default: 0, null: false
    t.integer "creater_status", default: 0, null: false
    t.integer "age"
    t.string "youtube_url"
    t.index ["email"], name: "index_creaters_on_email", unique: true
    t.index ["reset_password_token"], name: "index_creaters_on_reset_password_token", unique: true
  end

  create_table "employers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "employer_name", default: "", null: false
    t.text "summary"
    t.integer "employer_status", default: 0, null: false
    t.index ["email"], name: "index_employers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_employers_on_reset_password_token", unique: true
  end

  create_table "offers", force: :cascade do |t|
    t.integer "employer_id"
    t.string "title", default: "", null: false
    t.text "content", default: "", null: false
    t.date "deadline", null: false
    t.date "delivery_date", null: false
    t.integer "wage", null: false
    t.string "payment_method", default: "", null: false
    t.integer "payday", null: false
    t.integer "offer_status", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.integer "creater_id", null: false
    t.integer "project_status", default: 0, null: false
    t.text "demand", default: "", null: false
    t.date "time_limit", null: false
    t.integer "reward", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "offer_id"
    t.integer "request_id"
  end

  create_table "requests", force: :cascade do |t|
    t.integer "creater_id", null: false
    t.integer "offer_id", null: false
    t.text "opinion", default: "", null: false
    t.integer "request_status", default: 0, null: false
    t.integer "hope_salary", default: 0, null: false
    t.integer "production_span", default: 1, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
