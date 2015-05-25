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

ActiveRecord::Schema.define(version: 20150525055335) do

  create_table "auctions", force: true do |t|
    t.text     "customer"
    t.text     "subject"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "nmc"
    t.string   "ffeature"
    t.string   "sfeature"
    t.string   "category"
    t.string   "notice_number"
    t.string   "object"
    t.date     "public_date"
    t.datetime "end_date_time"
    t.date     "first_consideration_date"
    t.date     "realization_date"
    t.date     "second_consideration_date"
    t.integer  "demand_quantity"
    t.integer  "demand_withdrawal_quantity"
    t.string   "urz"
    t.string   "participants"
    t.string   "winner"
    t.float    "price"
    t.string   "result"
    t.string   "reason"
    t.string   "competition_regulator"
    t.string   "performer_name"
    t.string   "customer_category"
  end

  create_table "features", force: true do |t|
    t.string   "title"
    t.string   "level"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
