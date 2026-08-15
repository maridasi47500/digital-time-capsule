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

ActiveRecord::Schema[8.1].define(version: 2026_08_15_220207) do
  create_table "arguments", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name"
    t.string "range_or_list"
    t.string "type"
    t.datetime "updated_at", null: false
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

  create_table "mytimecalculations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "mydatetime"
    t.string "resultat"
    t.integer "time_operation_id", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["time_operation_id"], name: "index_mytimecalculations_on_time_operation_id"
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

  add_foreign_key "mycalculationhasarguments", "arguments"
  add_foreign_key "mycalculationhasarguments", "mytimecalculations"
  add_foreign_key "mytimecalculations", "time_operations"
  add_foreign_key "time_operations", "arguments"
end
