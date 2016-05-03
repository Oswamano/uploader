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

ActiveRecord::Schema.define(version: 20160503021633) do

  create_table "orders", force: :cascade do |t|
    t.date     "date_recieved"
    t.text     "sale",                     limit: 65535
    t.integer  "posting_agent_id",         limit: 4
    t.integer  "sales_agent_id",           limit: 4
    t.integer  "trustee_sale_file_number", limit: 4
    t.boolean  "high_liability"
    t.integer  "apn_number",               limit: 4
    t.text     "address",                  limit: 65535
    t.text     "state",                    limit: 65535
    t.text     "city",                     limit: 65535
    t.text     "county",                   limit: 65535
    t.integer  "zip_code",                 limit: 4
    t.date     "post_by_date"
    t.boolean  "notice_sent"
    t.boolean  "confirmation_recieved"
    t.boolean  "proof_recieved"
    t.text     "publishing_instructions",  limit: 65535
    t.date     "publishing_date_one"
    t.date     "publishing_date_two"
    t.date     "publishing_date_three"
    t.date     "publishing_date_four"
    t.date     "sale_date"
    t.text     "custom_sale_location",     limit: 65535
    t.text     "trustor",                  limit: 65535
    t.decimal  "opening_bid_in_cents",                   precision: 10
    t.decimal  "sold_amount_in_cents",                   precision: 10
    t.text     "sale_information_notes",   limit: 65535
    t.text     "notice_of_sale_amount",    limit: 65535
    t.integer  "shipment_track_number",    limit: 4
    t.text     "shipped_to",               limit: 65535
    t.text     "back_office_note",         limit: 65535
    t.text     "posting_note",             limit: 65535
    t.text     "sale_note",                limit: 65535
    t.boolean  "posting_order_confirmed"
    t.boolean  "agent_paid"
    t.boolean  "order_active"
    t.datetime "created_at",                                            null: false
    t.datetime "updated_at",                                            null: false
    t.string   "file1",                    limit: 255
    t.string   "file2",                    limit: 255
    t.string   "file3",                    limit: 255
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.integer  "resource_id",   limit: 4
    t.string   "resource_type", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
  add_index "roles", ["name"], name: "index_roles_on_name", using: :btree

  create_table "settings", force: :cascade do |t|
    t.string   "setting_category", limit: 255
    t.string   "setting_key",      limit: 255
    t.string   "setting_value",    limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string   "first_name",             limit: 255
    t.string   "last_name",              limit: 255
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id", limit: 4
    t.integer "role_id", limit: 4
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id", using: :btree

end
