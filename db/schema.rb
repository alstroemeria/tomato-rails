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

ActiveRecord::Schema.define(version: 20140120005911) do

  create_table "movies", force: true do |t|
    t.string   "title"
    t.decimal  "year"
    t.string   "mpaa_rating"
    t.decimal  "runtime"
    t.string   "critics_consensus"
    t.date     "release_date"
    t.string   "critics_rating"
    t.decimal  "critics_score"
    t.string   "audience_rating"
    t.string   "audience"
    t.decimal  "score"
    t.text     "synopsis"
    t.string   "poster_thumbnail"
    t.string   "poster_detail"
    t.decimal  "imdb"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "box_office"
    t.boolean  "in_theaters"
    t.boolean  "opening"
    t.boolean  "upcoming"
  end

end
