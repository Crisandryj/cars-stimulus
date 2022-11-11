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

ActiveRecord::Schema[7.0].define(version: 2022_11_11_201250) do
  create_table "car_variants", force: :cascade do |t|
    t.integer "car_id"
    t.integer "variant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_id"], name: "index_car_variants_on_car_id"
    t.index ["variant_id"], name: "index_car_variants_on_variant_id"
  end

  create_table "cars", force: :cascade do |t|
    t.string "name"
    t.string "model"
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "variants", force: :cascade do |t|
    t.string "type"
    t.integer "car_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_id"], name: "index_variants_on_car_id"
  end

  add_foreign_key "car_variants", "cars"
  add_foreign_key "car_variants", "variants"
  add_foreign_key "variants", "cars"
end
