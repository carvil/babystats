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

ActiveRecord::Schema.define(:version => 20110919202545) do

  create_table "babies", :force => true do |t|
    t.integer  "user_id"
    t.date     "birthday"
    t.string   "gender"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "height_percentiles", :force => true do |t|
    t.integer  "month"
    t.float    "p1"
    t.float    "p3"
    t.float    "p5"
    t.float    "p15"
    t.float    "p25"
    t.float    "p50"
    t.float    "p75"
    t.float    "p85"
    t.float    "p95"
    t.float    "p97"
    t.float    "p99"
    t.float    "standard_deviation"
    t.float    "mean"
    t.float    "sample_sd"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "gender"
    t.float    "p999"
    t.float    "p01"
    t.float    "p10"
    t.float    "p90"
  end

  create_table "stats", :force => true do |t|
    t.integer  "user_id"
    t.integer  "baby_id"
    t.float    "height"
    t.float    "weight"
    t.integer  "age_weeks"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
    t.string   "password_hash"
    t.string   "country"
    t.string   "city"
    t.string   "password_salt"
  end

end
