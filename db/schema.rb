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

  create_table "box_types", force: :cascade do |t|
    t.string "box_name"
    t.text   "box_description"
    t.string "name"
    t.text   "description"
  end

  create_table "boxes", force: :cascade do |t|
    t.integer "shopper_id"
    t.integer "stylist_id"
    t.string  "date"
    t.string  "link"
    t.integer "order"
    t.integer "invoice"
    t.text    "comments"
    t.integer "boxtype_id"
  end

  add_index "boxes", ["boxtype_id"], name: "index_boxes_on_boxtype_id"
  add_index "boxes", ["shopper_id"], name: "index_boxes_on_shopper_id"
  add_index "boxes", ["stylist_id"], name: "index_boxes_on_stylist_id"

  create_table "shoppers", force: :cascade do |t|
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
    t.integer "clothes_size"
    t.integer "shoe_size"
    t.string  "work_style"
    t.string  "evening_style"
    t.integer "favorite_look"
    t.integer "style_id"
    t.text    "shopper_comments"
    t.integer "stylist_id"
    t.string  "date_started"
  end

  add_index "shoppers", ["style_id"], name: "index_shoppers_on_style_id"
  add_index "shoppers", ["stylist_id"], name: "index_shoppers_on_stylist_id"

  create_table "styles", force: :cascade do |t|
    t.string "style_type"
    t.text   "style_description"
  end

  create_table "stylist_expertises", force: :cascade do |t|
    t.integer "stylist_id"
    t.integer "style_id"
  end

  add_index "stylist_expertises", ["style_id"], name: "index_stylist_expertises_on_style_id"
  add_index "stylist_expertises", ["stylist_id"], name: "index_stylist_expertises_on_stylist_id"

  create_table "stylists", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "image"
    t.string "email"
    t.string "password_digest"
  end

end
