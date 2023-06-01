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

ActiveRecord::Schema[7.0].define(version: 2023_05_30_221117) do
  create_table "alcohols", charset: "latin1", force: :cascade do |t|
    t.string "nombre"
    t.float "grado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nombre"], name: "index_alcohols_on_nombre", unique: true
  end

  create_table "bebidas", charset: "latin1", force: :cascade do |t|
    t.string "nombre"
    t.decimal "precio", precision: 10
    t.integer "tipo"
    t.bigint "zumo_id", null: false
    t.bigint "alcohol_id", null: false
    t.bigint "refresco_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["alcohol_id"], name: "index_bebidas_on_alcohol_id"
    t.index ["refresco_id"], name: "index_bebidas_on_refresco_id"
    t.index ["zumo_id"], name: "index_bebidas_on_zumo_id"
  end

  create_table "clientes", charset: "latin1", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.integer "puntos"
    t.string "correo"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["correo"], name: "index_clientes_on_correo", unique: true
    t.index ["nombre"], name: "index_clientes_on_nombre", unique: true
  end

  create_table "linea_pedidos", charset: "latin1", force: :cascade do |t|
    t.integer "id_pedido"
    t.integer "id_bebida"
    t.integer "cantidad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pedidos", charset: "latin1", force: :cascade do |t|
    t.bigint "cliente_id", null: false
    t.decimal "total", precision: 10
    t.string "estado"
    t.date "fecha"
    t.bigint "linea_pedido_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_pedidos_on_cliente_id"
    t.index ["linea_pedido_id"], name: "index_pedidos_on_linea_pedido_id"
  end

  create_table "refrescos", charset: "latin1", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nombre"], name: "index_refrescos_on_nombre", unique: true
  end

  create_table "zumos", charset: "latin1", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nombre"], name: "index_zumos_on_nombre", unique: true
  end

  add_foreign_key "bebidas", "alcohols"
  add_foreign_key "bebidas", "refrescos"
  add_foreign_key "bebidas", "zumos"
  add_foreign_key "pedidos", "clientes"
  add_foreign_key "pedidos", "linea_pedidos"
end
