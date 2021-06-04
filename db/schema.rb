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

ActiveRecord::Schema.define(version: 2021_06_04_094528) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "category_masters", force: :cascade do |t|
    t.string "cat_desc"
    t.text "comment"
    t.boolean "active_status", default: true
    t.boolean "del_status", default: false
    t.string "user_id"
    t.string "integer"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cost_uploads", force: :cascade do |t|
    t.integer "file_upload_id"
    t.string "name"
    t.string "category"
    t.string "source"
    t.integer "debit1"
    t.integer "debit2"
    t.integer "credit1"
    t.integer "credit2"
    t.integer "subtotal_debit1"
    t.integer "subtotal_debit2"
    t.integer "subtotal_credit1"
    t.integer "subtotal_credit2"
    t.integer "net_profit1"
    t.integer "net_profit2"
    t.integer "net_loss1"
    t.integer "net_loss2"
    t.string "period_start1"
    t.string "period_start2"
    t.string "period_end1"
    t.string "period_end2"
    t.boolean "active_status", default: true
    t.boolean "del_status", default: false
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "file_uploads", force: :cascade do |t|
    t.string "file_name"
    t.text "file_path"
    t.boolean "active_status", default: true
    t.boolean "del_status", default: false
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "generated_reports", force: :cascade do |t|
    t.string "cost_upload_id"
    t.string "report_file_name"
    t.text "report_file_path"
    t.boolean "active_status", default: true
    t.boolean "del_status", default: false
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "source_masters", force: :cascade do |t|
    t.string "source_desc"
    t.text "comment"
    t.boolean "active_status", default: false
    t.boolean "del_status"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
