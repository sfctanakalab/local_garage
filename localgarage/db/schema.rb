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

ActiveRecord::Schema.define(version: 20141027214951) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "data", force: true do |t|
    t.string   "stl_url"
    t.string   "gcode_url"
    t.decimal  "output_time"
    t.boolean  "finish_signal"
    t.string   "data_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "filaments", force: true do |t|
    t.string   "material"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "color"
  end

  create_table "maps", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "options", force: true do |t|
    t.boolean "is_checked", default: true, null: false
  end

  create_table "printer_filament_links", force: true do |t|
    t.integer  "printer_id"
    t.integer  "filament_id"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "printer_filament_links", ["filament_id"], name: "index_printer_filament_links_on_filament_id", using: :btree
  add_index "printer_filament_links", ["printer_id", "filament_id"], name: "index_printer_filament_links_on_printer_id_and_filament_id", unique: true, using: :btree
  add_index "printer_filament_links", ["printer_id"], name: "index_printer_filament_links_on_printer_id", using: :btree

  create_table "printers", force: true do |t|
    t.string   "machinemodel"
    t.decimal  "sizex"
    t.decimal  "sizey"
    t.decimal  "sizez"
    t.decimal  "resolution"
    t.text     "location"
    t.string   "image_url"
    t.boolean  "condition",    default: true, null: false
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "description"
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "title"
    t.binary   "image"
    t.string   "material"
    t.string   "color"
  end

  create_table "printers_filaments", force: true do |t|
    t.integer  "printer_id"
    t.integer  "filament_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "printers_users", force: true do |t|
    t.integer  "printer_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "authkey"
    t.integer  "relation"
  end

  add_index "printers_users", ["printer_id"], name: "index_printers_users_on_printer_id", using: :btree
  add_index "printers_users", ["user_id"], name: "index_printers_users_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
