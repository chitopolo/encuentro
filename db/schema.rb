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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130314134151) do

  create_table "programas", :force => true do |t|
    t.text     "name"
    t.datetime "time"
    t.string   "category"
    t.boolean  "obligatory"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "registers", :force => true do |t|
    t.string   "nombre"
    t.string   "apat"
    t.string   "amat"
    t.string   "carrera"
    t.string   "nivel"
    t.string   "email"
    t.string   "ci"
    t.string   "ciudad"
    t.string   "direccion"
    t.string   "zona"
    t.string   "telefonos"
    t.string   "celular"
    t.string   "otro"
    t.text     "salud"
    t.string   "apoderado"
    t.string   "parentesco"
    t.string   "telefonoapoderado"
    t.string   "direccionapoderado"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "registers_seminarios", :id => false, :force => true do |t|
    t.integer "register_id"
    t.integer "seminario_id"
  end

  add_index "registers_seminarios", ["register_id", "seminario_id"], :name => "index_registers_seminarios_on_register_id_and_seminario_id"

  create_table "seminarios", :force => true do |t|
    t.string   "nombre"
    t.datetime "hora"
    t.string   "category"
    t.boolean  "obligatory"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "image"
    t.string   "urls"
    t.string   "location"
    t.boolean  "verified"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

end
