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

ActiveRecord::Schema.define(version: 2021_12_20_225938) do

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "isbn"
    t.string "author"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author"], name: "index_books_on_author"
    t.index ["isbn"], name: "index_books_on_isbn"
    t.index ["title"], name: "index_books_on_title"
  end

  create_table "checkouts", force: :cascade do |t|
    t.integer "user_id"
    t.integer "book_id"
    t.date "checkin_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_checkouts_on_book_id"
    t.index ["checkin_date"], name: "index_checkouts_on_checkin_date"
    t.index ["user_id"], name: "index_checkouts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
