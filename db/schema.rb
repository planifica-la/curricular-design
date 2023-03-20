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

ActiveRecord::Schema[7.0].define(version: 2023_03_20_213124) do
  create_table "concept_topics", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "level_id", null: false
    t.integer "grade", null: false
    t.bigint "subject_id", null: false
    t.string "topic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["level_id"], name: "index_concept_topics_on_level_id"
    t.index ["subject_id"], name: "index_concept_topics_on_subject_id"
  end

  create_table "concepts", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "concept_topic_id", null: false
    t.text "concept"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["concept_topic_id"], name: "index_concepts_on_concept_topic_id"
  end

  create_table "fundamental_competences", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grade_competences", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.text "name"
    t.bigint "level_id", null: false
    t.integer "grade"
    t.bigint "fundamental_competence_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "subject_id", null: false
    t.index ["fundamental_competence_id"], name: "index_grade_competences_on_fundamental_competence_id"
    t.index ["level_id"], name: "index_grade_competences_on_level_id"
    t.index ["subject_id"], name: "index_grade_competences_on_subject_id"
  end

  create_table "levels", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_problems", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "problem"
    t.bigint "level_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["level_id"], name: "index_project_problems_on_level_id"
  end

  create_table "subjects", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "concept_topics", "levels"
  add_foreign_key "concept_topics", "subjects"
  add_foreign_key "concepts", "concept_topics"
  add_foreign_key "grade_competences", "fundamental_competences"
  add_foreign_key "grade_competences", "levels"
  add_foreign_key "grade_competences", "subjects"
  add_foreign_key "project_problems", "levels"
end
