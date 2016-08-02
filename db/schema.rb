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

ActiveRecord::Schema.define(version: 20160801234512) do

  create_table "userplaylists", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "comments_id"
    t.string   "name"
    t.string   "ratings"
    t.string   "image_link"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "userplaylists", ["user_id", "name"], name: "index_userplaylists_on_user_id_and_name", unique: true

  create_table "users", force: :cascade do |t|
    t.string   "username",        null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["username"], name: "index_users_on_username", unique: true

end
