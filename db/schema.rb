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

ActiveRecord::Schema.define(version: 2021_05_11_192518) do

  create_table "consoles", force: :cascade do |t|
    t.string "name"
  end

  create_table "developers", force: :cascade do |t|
    t.string "company"
  end

  create_table "games", force: :cascade do |t|
    t.string "title"
    t.string "genre"
    t.integer "year"
    t.integer "developer_id"
    t.integer "console_id"
    t.index ["console_id"], name: "index_games_on_console_id"
    t.index ["developer_id"], name: "index_games_on_developer_id"
  end

end
