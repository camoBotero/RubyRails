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

ActiveRecord::Schema.define(version: 2018_07_26_000826) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "libros", primary_key: "codigo", id: :integer, default: -> { "nextval('sec_codigolibros'::regclass)" }, force: :cascade do |t|
    t.string "titulo", limit: 30
    t.string "autor", limit: 30
    t.string "editorial", limit: 15
  end

  create_table "personas", primary_key: "id_persona", id: :integer, default: -> { "nextval('sec_personas'::regclass)" }, force: :cascade do |t|
    t.string "nombre", limit: 50
    t.string "apellido", limit: 50
    t.string "cedula", limit: 10
    t.integer "telefono"
    t.boolean "estado"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.string "correo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
