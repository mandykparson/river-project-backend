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

ActiveRecord::Schema.define(version: 2021_07_12_202805) do

  create_table "comments", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "point_of_interest_id", null: false
    t.string "text"
    t.integer "date"
    t.string "img"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["point_of_interest_id"], name: "index_comments_on_point_of_interest_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "images", force: :cascade do |t|
    t.string "source"
    t.string "alt_text"
    t.integer "RiverStretch_id", null: false
    t.string "caption"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["RiverStretch_id"], name: "index_images_on_RiverStretch_id"
  end

  create_table "point_of_interests", force: :cascade do |t|
    t.string "icon"
    t.string "information"
    t.string "coords"
    t.integer "Image_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Image_id"], name: "index_point_of_interests_on_Image_id"
  end

  create_table "river_stretches", force: :cascade do |t|
    t.string "name"
    t.string "river"
    t.string "miles"
    t.boolean "permit"
    t.string "permit_link"
    t.string "put_in"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "comments", "point_of_interests"
  add_foreign_key "comments", "users"
  add_foreign_key "images", "RiverStretches"
  add_foreign_key "point_of_interests", "Images"
end
