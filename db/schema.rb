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

ActiveRecord::Schema.define(version: 20170803012609) do

  create_table "donors", force: :cascade do |t|
    t.string   "donorName"
    t.string   "phoneNum"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inventories", force: :cascade do |t|
    t.integer  "itemnum"
    t.integer  "orgnum"
    t.integer  "quantity"
    t.date     "expires"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "inventory_id"
  end

  create_table "inventories_items", id: false, force: :cascade do |t|
    t.integer "inventory_id", null: false
    t.integer "item_id",      null: false
  end

  create_table "inventories_organizations", id: false, force: :cascade do |t|
    t.integer "inventory_id",    null: false
    t.integer "organization_id", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "category"
    t.string   "itemName"
    t.date     "expiration"
    t.integer  "donationID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "item_id"
  end

  create_table "organizations", force: :cascade do |t|
    t.string   "address"
    t.string   "org_name"
    t.string   "phone"
    t.string   "contact_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "organization_id"
  end

end
