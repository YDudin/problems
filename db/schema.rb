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

ActiveRecord::Schema.define(version: 20160326100032) do

  create_table "problems", force: :cascade do |t|
    t.integer  "user_id",    null: false
    t.integer  "task_id",    null: false
    t.datetime "ends_at",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "problems", ["task_id"], name: "index_problems_on_task_id"
  add_index "problems", ["user_id"], name: "index_problems_on_user_id"

  create_table "solutions", force: :cascade do |t|
    t.integer  "problem_id",  null: false
    t.text     "content",     null: false
    t.text     "test_output"
    t.integer  "test_status"
    t.datetime "checked_at"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "solutions", ["problem_id"], name: "index_solutions_on_problem_id"

  create_table "tasks", force: :cascade do |t|
    t.string   "name",         null: false
    t.text     "description",  null: false
    t.text     "test",         null: false
    t.text     "test_command", null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                           null: false
    t.string   "password_digest",                 null: false
    t.integer  "failed_attempts", default: 0,     null: false
    t.boolean  "is_admin",        default: false, null: false
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

end
