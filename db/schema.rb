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

ActiveRecord::Schema.define(version: 20170730150709) do

  create_table "academic_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "abbreviation"
  end

  create_table "faculties", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stream_subjects", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "stream_id"
    t.integer "subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "year"
  end

  create_table "streams", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.text "description"
    t.integer "academic_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "abbreviation"
  end

  create_table "students", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subjects", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.text "description"
    t.integer "year_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "abbreviation"
    t.integer "stream_id"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "type"
    t.string "mobile"
    t.text "address"
    t.string "location"
    t.string "qualification"
    t.string "experience"
    t.integer "stream_id"
    t.integer "academic_type_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
