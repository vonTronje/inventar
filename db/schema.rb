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

ActiveRecord::Schema.define(:version => 20120604142135) do

  create_table "ausgabes", :force => true do |t|
    t.date     "ausgabedatum"
    t.date     "rueckgabedatum"
    t.string   "kommentar"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "mobilfunkgeraets", :force => true do |t|
    t.string   "typ"
    t.string   "geraete_pin"
    t.string   "telefonnummer"
    t.string   "imei"
    t.string   "kommentar"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "pc_austattungs", :force => true do |t|
    t.string   "typ"
    t.string   "modell"
    t.string   "service_tag"
    t.string   "mac_wlan"
    t.string   "mac_lan"
    t.string   "kommentar"
    t.string   "teamviewer"
    t.string   "status"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "vorname"
    t.string   "nachname"
    t.string   "abteilung"
    t.string   "position"
    t.string   "email"
    t.string   "telefonnummer"
    t.string   "kommentar"
    t.string   "anrede"
    t.boolean  "beschaeftigt"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

end
