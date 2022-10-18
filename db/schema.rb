# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_10_18_140554) do
  create_table "chat_messages", force: :cascade do |t|
    t.string "message", null: false
    t.integer "chatroom_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id", null: false
    t.index ["chatroom_id"], name: "index_chat_messages_on_chatroom_id"
    t.index ["user_id"], name: "index_chat_messages_on_user_id"
  end

  create_table "chatrooms", force: :cascade do |t|
    t.string "label", null: false
    t.boolean "resolved", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "nature_code_id"
    t.index ["nature_code_id"], name: "index_chatrooms_on_nature_code_id"
  end

  create_table "nature_codes", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "chat_messages", "chatrooms"
  add_foreign_key "chat_messages", "users"
  add_foreign_key "chatrooms", "nature_codes"
end
