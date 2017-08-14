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

ActiveRecord::Schema.define(version: 0) do

  create_table "edamater_availabilities", force: :cascade do |t|
    t.boolean "12am", default: false
    t.boolean "1am", default: false
    t.boolean "2am", default: false
    t.boolean "3am", default: false
    t.boolean "4am", default: false
    t.boolean "5am", default: false
    t.boolean "6am", default: false
    t.boolean "7am", default: false
    t.boolean "8am", default: false
    t.boolean "9am", default: false
    t.boolean "10am", default: false
    t.boolean "11am", default: false
    t.boolean "12pm", default: false
    t.boolean "1pm", default: false
    t.boolean "2pm", default: false
    t.boolean "3pm", default: false
    t.boolean "4pm", default: false
    t.boolean "5pm", default: false
    t.boolean "6pm", default: false
    t.boolean "7pm", default: false
    t.boolean "8pm", default: false
    t.boolean "9pm", default: false
    t.boolean "10pm", default: false
    t.boolean "11pm", default: false
  end

  create_table "edamaters", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.string "image"
    t.datetime "updated_at"
    t.text "description"
    t.integer "user_id"
    t.integer "availability_id"
    t.index ["availability_id"], name: "index_edamaters_on_availability_id"
    t.index ["user_id"], name: "index_edamaters_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "text"
    t.datetime "updated_at"
    t.string "author"
    t.integer "user_id"
    t.integer "edamater_id"
    t.integer "rating_logistics"
    t.integer "rating_clarity"
    t.integer "rating_structure"
    t.integer "rating_value"
    t.index ["edamater_id"], name: "index_reviews_on_edamater_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "student_availabilities", force: :cascade do |t|
    t.boolean "12am", default: false
    t.boolean "1am", default: false
    t.boolean "2am", default: false
    t.boolean "3am", default: false
    t.boolean "4am", default: false
    t.boolean "5am", default: false
    t.boolean "6am", default: false
    t.boolean "7am", default: false
    t.boolean "8am", default: false
    t.boolean "9am", default: false
    t.boolean "10am", default: false
    t.boolean "11am", default: false
    t.boolean "12pm", default: false
    t.boolean "1pm", default: false
    t.boolean "2pm", default: false
    t.boolean "3pm", default: false
    t.boolean "4pm", default: false
    t.boolean "5pm", default: false
    t.boolean "6pm", default: false
    t.boolean "7pm", default: false
    t.boolean "8pm", default: false
    t.boolean "9pm", default: false
    t.boolean "10pm", default: false
    t.boolean "11pm", default: false
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.string "image"
    t.text "description"
    t.integer "user_id"
    t.integer "availability_id"
    t.datetime "updated_at"
    t.index ["availability_id"], name: "index_students_on_availability_id"
    t.index ["user_id"], name: "index_students_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.datetime "updated_at"
    t.string "email"
    t.string "password_digest"
  end

end
