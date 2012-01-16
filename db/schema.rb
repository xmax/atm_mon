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

ActiveRecord::Schema.define(:version => 20120116195534) do

  create_table "atm_audits", :force => true do |t|
    t.integer  "atm_id"
    t.datetime "inkass_time"
    t.datetime "inkass_time_end"
    t.integer  "cas_a"
    t.integer  "cas_b"
    t.integer  "cas_c"
    t.integer  "cas_d"
    t.integer  "cas_e"
    t.integer  "cas_f"
    t.integer  "cas_g"
    t.integer  "cas_h"
    t.integer  "atm_denom_id"
    t.integer  "atm_user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "atm_users", :force => true do |t|
    t.string   "user_first_name"
    t.string   "user_last_name"
    t.datetime "user_active_begin"
    t.datetime "user_active_end"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "atms", :force => true do |t|
    t.string   "atm_code"
    t.string   "atm_city"
    t.string   "atm_address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
