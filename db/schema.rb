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

ActiveRecord::Schema.define(version: 20171122104046) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vongmatrics", force: :cascade do |t|
    t.string "emis"
    t.string "centre_no"
    t.string "school_name"
    t.integer "wrote_2014"
    t.integer "passed_2014"
    t.integer "wrote_2015"
    t.integer "passed_2015"
    t.integer "wrote_2016"
    t.integer "passed_2016"
    t.decimal "pass_rate"
    t.decimal "failure_rate"
    t.decimal "pass_rate2015"
    t.decimal "failure_rate2015"
    t.decimal "pass_rate2016"
    t.decimal "failure_rate2016"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
