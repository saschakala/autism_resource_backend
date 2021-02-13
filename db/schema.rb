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

ActiveRecord::Schema.define(version: 2021_02_13_041648) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "article_creators", force: :cascade do |t|
    t.bigint "article_id"
    t.bigint "creator_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["article_id"], name: "index_article_creators_on_article_id"
    t.index ["creator_id"], name: "index_article_creators_on_creator_id"
  end

  create_table "article_tags", force: :cascade do |t|
    t.bigint "article_id"
    t.bigint "tag_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["article_id"], name: "index_article_tags_on_article_id"
    t.index ["tag_id"], name: "index_article_tags_on_tag_id"
  end

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.string "genre"
    t.string "url"
    t.string "img_url"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "book_creators", force: :cascade do |t|
    t.bigint "book_id"
    t.bigint "creator_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["book_id"], name: "index_book_creators_on_book_id"
    t.index ["creator_id"], name: "index_book_creators_on_creator_id"
  end

  create_table "book_tags", force: :cascade do |t|
    t.bigint "book_id"
    t.bigint "tag_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["book_id"], name: "index_book_tags_on_book_id"
    t.index ["tag_id"], name: "index_book_tags_on_tag_id"
  end

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "genre"
    t.string "url"
    t.string "img_url"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "creators", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "url"
    t.boolean "autistic"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "title"
    t.text "bio"
    t.string "pronouns"
  end

  create_table "feedbacks", force: :cascade do |t|
    t.string "title"
    t.text "feedback"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "multimedia", force: :cascade do |t|
    t.string "title"
    t.string "genre"
    t.string "url"
    t.string "img_url"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "media_type"
  end

  create_table "multimedia_tags", force: :cascade do |t|
    t.bigint "multimedium_id"
    t.bigint "tags_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["multimedium_id"], name: "index_multimedia_tags_on_multimedium_id"
    t.index ["tags_id"], name: "index_multimedia_tags_on_tags_id"
  end

  create_table "sma_creators", force: :cascade do |t|
    t.bigint "social_media_account_id"
    t.bigint "creator_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["creator_id"], name: "index_sma_creators_on_creator_id"
    t.index ["social_media_account_id"], name: "index_sma_creators_on_social_media_account_id"
  end

  create_table "sma_tags", force: :cascade do |t|
    t.bigint "social_media_account_id"
    t.bigint "tag_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["social_media_account_id"], name: "index_sma_tags_on_social_media_account_id"
    t.index ["tag_id"], name: "index_sma_tags_on_tag_id"
  end

  create_table "social_media_accounts", force: :cascade do |t|
    t.string "platform"
    t.string "handle"
    t.string "url"
    t.string "img_url"
    t.text "bio"
    t.string "genre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tags", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "tag_name"
  end

  add_foreign_key "article_creators", "articles"
  add_foreign_key "article_creators", "creators"
  add_foreign_key "article_tags", "articles"
  add_foreign_key "article_tags", "tags"
  add_foreign_key "book_creators", "books"
  add_foreign_key "book_creators", "creators"
  add_foreign_key "book_tags", "books"
  add_foreign_key "book_tags", "tags"
  add_foreign_key "multimedia_tags", "multimedia"
  add_foreign_key "multimedia_tags", "tags", column: "tags_id"
  add_foreign_key "sma_creators", "creators"
  add_foreign_key "sma_creators", "social_media_accounts"
  add_foreign_key "sma_tags", "social_media_accounts"
  add_foreign_key "sma_tags", "tags"
end
