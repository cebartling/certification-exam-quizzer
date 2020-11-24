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

ActiveRecord::Schema.define(version: 2020_11_24_060953) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"

  create_table "certification_exam_topics", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "certification_exam_id", null: false
    t.string "name", limit: 255, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "certification_exam_topics_name_unique_idx", unique: true
  end

  create_table "certification_exams", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name", limit: 1024, null: false
    t.string "exam_code", limit: 50, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "certification_exams_name_unique_idx", unique: true
  end

  create_table "exam_question_responses", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "exam_question_id", null: false
    t.string "response_text", null: false
    t.text "explanation_text"
    t.boolean "correct", default: false, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "exam_questions", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "certification_exam_id", null: false
    t.text "question_text", null: false
    t.boolean "single_answer", default: true, null: false
    t.integer "difficulty", default: 1, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "exam_questions_topics", id: false, force: :cascade do |t|
    t.bigint "certification_exam_topics_id"
    t.bigint "exam_questions_id"
    t.index ["certification_exam_topics_id"], name: "index_exam_questions_topics_on_certification_exam_topics_id"
    t.index ["exam_questions_id"], name: "index_exam_questions_topics_on_exam_questions_id"
  end

  create_table "users", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "first_name", limit: 100, null: false
    t.string "last_name", limit: 100, null: false
    t.string "username", limit: 255, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["username"], name: "users_username_unique_idx", unique: true
  end

  add_foreign_key "certification_exam_topics", "certification_exams"
  add_foreign_key "exam_question_responses", "exam_questions"
  add_foreign_key "exam_questions", "certification_exams"
end
