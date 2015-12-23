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

ActiveRecord::Schema.define(version: 20151223121011) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "apartamentos", force: :cascade do |t|
    t.string   "numero"
    t.string   "torre"
    t.integer  "piso"
    t.integer  "nro_habitantes", default: 0
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "area",           default: 0
  end

  create_table "residentes", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "telefono"
    t.date     "fecha_nacimiento"
    t.string   "identificacion"
    t.integer  "apartamento_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "residentes", ["apartamento_id"], name: "index_residentes_on_apartamento_id", using: :btree

  create_table "usuarios", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "login"
    t.string   "correo"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

  create_table "vehiculos", force: :cascade do |t|
    t.string   "placa"
    t.string   "marca"
    t.string   "color"
    t.text     "descripcion"
    t.integer  "apartamento_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "vehiculos", ["apartamento_id"], name: "index_vehiculos_on_apartamento_id", using: :btree

  add_foreign_key "residentes", "apartamentos"
  add_foreign_key "vehiculos", "apartamentos"
end
