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

ActiveRecord::Schema.define(version: 20131121001342) do

  create_table "items", force: true do |t|
    t.string  "name"
    t.integer "category_id"
    t.string  "color"
    t.string  "brand"
    t.float   "price"
  end

  create_table "order_items", force: true do |t|
    t.integer "order_id"
    t.integer "item_id"
  end

  create_table "orders", force: true do |t|
    t.integer  "user_id"
    t.boolean  "complete"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string  "first_name"
    t.string  "second_name"
    t.date    "date_of_birth"
    t.string  "email"
    t.string  "waist_size"
    t.string  "hip_size"
    t.string  "bra_size"
    t.integer "body_shape_id"
  end

end
