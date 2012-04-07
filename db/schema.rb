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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120407164408) do

  create_table "babies", :force => true do |t|
    t.string   "name"
    t.date     "dob"
    t.string   "gender"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "user_id"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "percentile_indicators", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "percentiles", :force => true do |t|
    t.integer  "day"
    t.integer  "percentile_indicator_id"
    t.float    "power_l"
    t.float    "mean_m"
    t.float    "variation_s"
    t.float    "percentile_01"
    t.float    "percentile_1"
    t.float    "percentile_3"
    t.float    "percentile_5"
    t.float    "percentile_10"
    t.float    "percentile_15"
    t.float    "percentile_25"
    t.float    "percentile_50"
    t.float    "percentile_75"
    t.float    "percentile_85"
    t.float    "percentile_90"
    t.float    "percentile_95"
    t.float    "percentile_97"
    t.float    "percentile_99"
    t.float    "percentile_999"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
    t.string   "gender"
    t.string   "measure_unit"
  end

  create_table "stats", :force => true do |t|
    t.integer  "baby_id"
    t.float    "height_in_meters"
    t.integer  "age_months"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
