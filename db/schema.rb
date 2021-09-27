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

ActiveRecord::Schema.define(version: 2021_09_27_235336) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carros", force: :cascade do |t|
    t.bigint "usuario_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["usuario_id"], name: "index_carros_on_usuario_id"
  end

  create_table "comentarios", force: :cascade do |t|
    t.string "descipcion"
    t.integer "calificacion"
    t.bigint "usuario_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["usuario_id"], name: "index_comentarios_on_usuario_id"
  end

  create_table "facturas", force: :cascade do |t|
    t.string "codigo"
    t.float "total"
    t.float "impuestos"
    t.bigint "carro_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["carro_id"], name: "index_facturas_on_carro_id"
  end

  create_table "orden_envios", force: :cascade do |t|
    t.datetime "fecha_entrega"
    t.integer "estado"
    t.string "codigo"
    t.bigint "factura_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["factura_id"], name: "index_orden_envios_on_factura_id"
  end

  create_table "producto_carros", force: :cascade do |t|
    t.bigint "producto_id", null: false
    t.bigint "carro_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["carro_id"], name: "index_producto_carros_on_carro_id"
    t.index ["producto_id"], name: "index_producto_carros_on_producto_id"
  end

  create_table "productos", force: :cascade do |t|
    t.string "descipcion"
    t.float "precio"
    t.float "stok"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "proveedor_productos", force: :cascade do |t|
    t.bigint "proveedor_id", null: false
    t.bigint "producto_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["producto_id"], name: "index_proveedor_productos_on_producto_id"
    t.index ["proveedor_id"], name: "index_proveedor_productos_on_proveedor_id"
  end

  create_table "proveedors", force: :cascade do |t|
    t.string "nombre"
    t.string "email"
    t.integer "telefono"
    t.string "direccion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nombre"
    t.string "password"
    t.string "email"
    t.integer "tipo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "carros", "usuarios"
  add_foreign_key "comentarios", "usuarios"
  add_foreign_key "facturas", "carros"
  add_foreign_key "orden_envios", "facturas"
  add_foreign_key "producto_carros", "carros"
  add_foreign_key "producto_carros", "productos"
  add_foreign_key "proveedor_productos", "productos"
  add_foreign_key "proveedor_productos", "proveedors"
end
