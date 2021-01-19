# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_01_18_205944) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "creators", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "url"
    t.boolean "autistic"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "title"
  end

  create_table "source_creators", force: :cascade do |t|
    t.bigint "source_id"
    t.bigint "creator_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["creator_id"], name: "index_source_creators_on_creator_id"
    t.index ["source_id"], name: "index_source_creators_on_source_id"
  end

  create_table "source_tags", force: :cascade do |t|
    t.bigint "source_id"
    t.bigint "tag_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["source_id"], name: "index_source_tags_on_source_id"
    t.index ["tag_id"], name: "index_source_tags_on_tag_id"
  end

  create_table "sources", force: :cascade do |t|
    t.string "source_type"
    t.string "title"
    t.string "platform"
    t.string "handle"
    t.string "genre"
    t.string "url"
    t.string "img_url"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tags", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "tag_name"
  end

  add_foreign_key "source_creators", "creators"
  add_foreign_key "source_creators", "sources"
  add_foreign_key "source_tags", "sources"
  add_foreign_key "source_tags", "tags"
end
