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

ActiveRecord::Schema.define(version: 20160405100703) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "crops", force: :cascade do |t|
    t.string   "name"
    t.float    "ideal_temp"
    t.float    "ideal_humi"
    t.float    "ideal_mois"
    t.float    "min_temp"
    t.float    "max_temp"
    t.float    "min_humi"
    t.float    "max_humi"
    t.float    "min_mois"
    t.float    "max_mois"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "farmcrops", force: :cascade do |t|
    t.integer  "farm_id"
    t.integer  "crop_id"
    t.date     "from_date"
    t.date     "to_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "farmcrops", ["crop_id"], name: "index_farmcrops_on_crop_id"
  add_index "farmcrops", ["farm_id"], name: "index_farmcrops_on_farm_id"

  create_table "farmers", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.text     "address"
    t.string   "phone"
  end

  add_index "farmers", ["email"], name: "index_farmers_on_email", unique: true
  add_index "farmers", ["reset_password_token"], name: "index_farmers_on_reset_password_token", unique: true

  create_table "farms", force: :cascade do |t|
    t.integer  "farmer_id"
    t.string   "location"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "farms", ["farmer_id"], name: "index_farms_on_farmer_id"

  create_table "farmsensors", force: :cascade do |t|
    t.integer  "farm_id"
    t.integer  "sensor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "farmsensors", ["farm_id"], name: "index_farmsensors_on_farm_id"
  add_index "farmsensors", ["sensor_id"], name: "index_farmsensors_on_sensor_id"

  create_table "moistures", force: :cascade do |t|
    t.integer  "farm_id"
    t.integer  "crop_id"
    t.float    "mois_read"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "moistures", ["crop_id"], name: "index_moistures_on_crop_id"
  add_index "moistures", ["farm_id"], name: "index_moistures_on_farm_id"

  create_table "sensors", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "temperatures", force: :cascade do |t|
    t.integer  "farm_id"
    t.integer  "crop_id"
    t.float    "temp_read"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "sensor_id"
    t.float    "humi_read"
  end

  add_index "temperatures", ["crop_id"], name: "index_temperatures_on_crop_id"
  add_index "temperatures", ["farm_id"], name: "index_temperatures_on_farm_id"
  add_index "temperatures", ["sensor_id"], name: "index_temperatures_on_sensor_id"

end
