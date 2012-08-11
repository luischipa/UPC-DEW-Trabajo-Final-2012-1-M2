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

ActiveRecord::Schema.define(:version => 20120811080843) do

  create_table "client_patients", :force => true do |t|
    t.integer  "client_id"
    t.integer  "patient_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "clients", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "address"
    t.string   "phonehome"
    t.string   "phonecel"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_update_at"
    t.string   "codigo"
  end

  create_table "detallefacturas", :force => true do |t|
    t.string   "cofactura"
    t.string   "coproducto"
    t.integer  "cantidad"
    t.integer  "precio"
    t.integer  "importe"
    t.integer  "subtotal"
    t.integer  "total"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "doctors", :force => true do |t|
    t.string   "name"
    t.string   "lastname"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "facturas", :force => true do |t|
    t.string   "cofactura"
    t.date     "fefactura"
    t.string   "codigo"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "histories", :force => true do |t|
    t.string   "entry"
    t.string   "discharge"
    t.text     "symptoms"
    t.text     "diagnosis"
    t.text     "treatment"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "patient_histories", :force => true do |t|
    t.integer  "patient_id"
    t.integer  "history_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "patients", :force => true do |t|
    t.string   "name"
    t.string   "species"
    t.string   "race"
    t.string   "birth"
    t.string   "hair"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "prospectus", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "imag"
    t.string   "phonehome"
    t.string   "phonecelular"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_update_at"
    t.string   "codigo"
    t.string   "address"
    t.string   "phonecel"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "tipo"
  end

  create_table "usuarios", :force => true do |t|
    t.string   "User"
    t.string   "password"
    t.string   "tipo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
