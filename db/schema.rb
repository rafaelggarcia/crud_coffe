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

ActiveRecord::Schema[7.0].define(version: 2023_11_04_164340) do
  create_table "compradors", force: :cascade do |t|
    t.string "cpf_cnpj"
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "oferta", force: :cascade do |t|
    t.string "saca"
    t.string "tipo"
    t.string "origem"
    t.text "descricao"
    t.integer "quantidade_estoque"
    t.boolean "barter"
    t.integer "vendedor_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["vendedor_id"], name: "index_oferta_on_vendedor_id"
  end

  create_table "vendedors", force: :cascade do |t|
    t.string "cnpj"
    t.string "razao_social"
    t.string "site"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "oferta", "vendedors"
end
