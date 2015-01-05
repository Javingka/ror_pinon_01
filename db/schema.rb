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

ActiveRecord::Schema.define(version: 20150105184353) do

  create_table "motos", force: true do |t|
    t.string   "nombre_autor"
    t.string   "email_autor"
    t.text     "ciudad"
    t.text     "pais"
    t.text     "ocupación"
    t.integer  "sel_motor"
    t.string   "sel_motor_color"
    t.integer  "sel_asiento"
    t.integer  "sel_rueda"
    t.integer  "sel_llanta"
    t.string   "sel_llanta_color"
    t.integer  "sel_estanque"
    t.string   "sel_estanque_color"
    t.integer  "sel_escape"
    t.integer  "sel_relog"
    t.integer  "sel_tapabarro"
    t.string   "sel_tapabarro_color"
    t.integer  "sel_manijar"
    t.string   "nombre_moto"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
