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

ActiveRecord::Schema[8.1].define(version: 2026_08_16_211333) do
  create_table "arguments", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name"
    t.string "range_or_list"
    t.string "time_operation_id"
    t.string "type"
    t.datetime "updated_at", null: false
  end

  create_table "my_timecalculation_has_time_operations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.integer "mytimecalculation_id", null: false
    t.integer "time_operation_id", null: false
    t.datetime "updated_at", null: false
    t.index ["mytimecalculation_id"], name: "idx_on_mytimecalculation_id_3f617be0c3"
    t.index ["time_operation_id"], name: "idx_on_time_operation_id_945696a8f7"
  end

  create_table "mycalculationhasarguments", force: :cascade do |t|
    t.integer "argument_id", null: false
    t.datetime "created_at", null: false
    t.string "my_value"
    t.integer "mytimecalculation_id", null: false
    t.datetime "updated_at", null: false
    t.index ["argument_id"], name: "index_mycalculationhasarguments_on_argument_id"
    t.index ["mytimecalculation_id"], name: "index_mycalculationhasarguments_on_mytimecalculation_id"
  end

  create_table "mytimecalculation_has_arguments", force: :cascade do |t|
    t.integer "argument_id_id", null: false
    t.datetime "created_at", null: false
    t.string "my_value"
    t.integer "mytimecalculation_id", null: false
    t.datetime "updated_at", null: false
    t.index ["argument_id_id"], name: "index_mytimecalculation_has_arguments_on_argument_id_id"
    t.index ["mytimecalculation_id"], name: "index_mytimecalculation_has_arguments_on_mytimecalculation_id"
  end

  create_table "mytimecalculationhasothertimecalculations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.integer "mytimecalculation_id", null: false
    t.string "resultat"
    t.integer "time_operation_id", null: false
    t.datetime "updated_at", null: false
    t.index ["mytimecalculation_id"], name: "idx_on_mytimecalculation_id_4ba11b9eb6"
    t.index ["time_operation_id"], name: "idx_on_time_operation_id_126c21fa34"
  end

  create_table "mytimecalculations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "mydatetime"
    t.string "resultat"
    t.integer "time_operation_id", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["time_operation_id"], name: "index_mytimecalculations_on_time_operation_id"
  end

  create_table "othertimecalculationhasarguments", force: :cascade do |t|
    t.integer "argument_id", null: false
    t.datetime "created_at", null: false
    t.integer "mytimecalculationhasothertimecalculation_id", null: false
    t.datetime "updated_at", null: false
    t.string "value"
    t.index ["argument_id"], name: "index_othertimecalculationhasarguments_on_argument_id"
    t.index ["mytimecalculationhasothertimecalculation_id"], name: "idx_on_mytimecalculationhasothertimecalculation_id_b0af905015"
  end

  create_table "photos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "description"
    t.integer "mytimecalculation_id", null: false
    t.string "pic"
    t.datetime "updated_at", null: false
    t.string "user_id"
    t.index ["mytimecalculation_id"], name: "index_photos_on_mytimecalculation_id"
  end

  create_table "time_operations", force: :cascade do |t|
    t.integer "argument_id"
    t.datetime "created_at", null: false
    t.string "entree"
    t.string "name"
    t.string "resultat"
    t.datetime "updated_at", null: false
    t.index ["argument_id"], name: "index_time_operations_on_argument_id"
  end

  add_foreign_key "my_timecalculation_has_time_operations", "mytimecalculations"
  add_foreign_key "my_timecalculation_has_time_operations", "time_operations"
  add_foreign_key "mycalculationhasarguments", "arguments"
  add_foreign_key "mycalculationhasarguments", "mytimecalculations"
  add_foreign_key "mytimecalculation_has_arguments", "argument_ids"
  add_foreign_key "mytimecalculation_has_arguments", "mytimecalculations"
  add_foreign_key "mytimecalculationhasothertimecalculations", "mytimecalculations"
  add_foreign_key "mytimecalculationhasothertimecalculations", "time_operations"
  add_foreign_key "mytimecalculations", "time_operations"
  add_foreign_key "othertimecalculationhasarguments", "arguments"
  add_foreign_key "othertimecalculationhasarguments", "mytimecalculationhasothertimecalculations"
  add_foreign_key "photos", "mytimecalculations"
  add_foreign_key "time_operations", "arguments"
end
