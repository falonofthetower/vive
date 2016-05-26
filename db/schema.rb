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

ActiveRecord::Schema.define(version: 20160526093054) do

  create_table "properties", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "beds"
    t.string   "baths"
    t.string   "price"
    t.string   "status"
    t.text     "description"
    t.string   "google_address"
    t.boolean  "show_to_site",   default: false
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "archive",        default: false
  end

  create_table "users", force: :cascade do |t|
    t.string  "name"
    t.string  "email"
    t.string  "password_digest"
    t.boolean "admin",           default: false
  end

end
