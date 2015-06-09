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

ActiveRecord::Schema.define(version: 0) do

  create_table "boxes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "stylist_id"
    t.string  "date"
    t.string  "link"
    t.integer "order"
    t.integer "invoice"
    t.text    "comments"
    t.integer "theme_id"
  end

  add_index "boxes", ["stylist_id"], name: "index_boxes_on_stylist_id"
  add_index "boxes", ["theme_id"], name: "index_boxes_on_theme_id"
  add_index "boxes", ["user_id"], name: "index_boxes_on_user_id"

  create_table "stylists", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "image"
    t.string "email"
  end

  create_table "themes", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.text   "description"
  end

  create_table "users", force: :cascade do |t|
    t.string  "first_name"
    t.string  "last_name"
    t.integer "dob"
    t.string  "date_joined"
    t.string  "how_heard"
    t.string  "phone_number"
    t.text    "address"
    t.string  "city"
    t.string  "state"
    t.string  "country"
    t.string  "zip"
    t.string  "email"
    t.string  "password_digest"
    t.integer "height"
    t.integer "weight"
    t.integer "top_size"
    t.integer "bottom_size"
    t.integer "shoe_size"
    t.text    "work_style"
    t.text    "evening_style"
    t.text    "casual_style"
    t.text    "special_style"
    t.text    "user_comments"
    t.integer "stylist_id"
    t.string  "date_started"
    t.boolean "admin",           default: false
  end

  add_index "users", ["stylist_id"], name: "index_users_on_stylist_id"

end
