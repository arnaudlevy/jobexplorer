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

ActiveRecord::Schema.define(version: 20161012191712) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "criterions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notations", force: :cascade do |t|
    t.integer  "criterion_id"
    t.string   "subject_type"
    t.integer  "subject_id"
    t.integer  "score"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["criterion_id"], name: "index_notations_on_criterion_id", using: :btree
    t.index ["subject_type", "subject_id"], name: "index_notations_on_subject_type_and_subject_id", using: :btree
  end

  create_table "offers", force: :cascade do |t|
    t.string   "name"
    t.text     "url"
    t.integer  "company_id"
    t.integer  "job_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_offers_on_company_id", using: :btree
    t.index ["job_id"], name: "index_offers_on_job_id", using: :btree
  end

  add_foreign_key "notations", "criterions"
  add_foreign_key "offers", "companies"
  add_foreign_key "offers", "jobs"
end
