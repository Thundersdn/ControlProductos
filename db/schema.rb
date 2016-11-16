# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161116055012) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bodegas", force: :cascade do |t|
    t.integer  "producto_id"
    t.integer  "sucursal_id"
    t.integer  "stock"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "bodegas", ["producto_id"], name: "index_bodegas_on_producto_id", using: :btree
  add_index "bodegas", ["sucursal_id"], name: "index_bodegas_on_sucursal_id", using: :btree

  create_table "productos", force: :cascade do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "sucursals", force: :cascade do |t|
    t.string   "nombre"
    t.string   "direccion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "rut"
    t.string   "nombre"
    t.integer  "cargo"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "sucursal_id"
  end

  add_index "usuarios", ["sucursal_id"], name: "index_usuarios_on_sucursal_id", using: :btree

  add_foreign_key "bodegas", "productos"
  add_foreign_key "bodegas", "sucursals"
end
