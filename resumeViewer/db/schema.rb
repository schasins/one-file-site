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

ActiveRecord::Schema.define(:version => 20111226220712) do

  create_table "resume_items", :force => true do |t|
    t.integer  "resume_id"
    t.string   "type"
    t.string   "section"
    t.string   "positiontitle"
    t.string   "location"
    t.string   "startMonth"
    t.string   "startSeason"
    t.integer  "startYear"
    t.string   "endMonth"
    t.string   "endSeason"
    t.integer  "endYear"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "order"
    t.string   "link"
  end

  add_index "resume_items", ["resume_id"], :name => "index_resume_items_on_resume_id"

  create_table "resumes", :force => true do |t|
    t.integer  "user_id"
    t.boolean  "default"
    t.string   "email"
    t.text     "html"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "firstName"
    t.string   "lastName"
    t.string   "middleNames"
    t.string   "resumeName"
  end

  add_index "resumes", ["user_id"], :name => "index_resumes_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "passwordHash"
    t.string   "passwordSalt"
  end

end
