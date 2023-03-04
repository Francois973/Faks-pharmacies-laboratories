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

ActiveRecord::Schema[7.0].define(version: 2023_03_04_123122) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "laboratories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "laboratory_products", force: :cascade do |t|
    t.bigint "laboratory_id", null: false
    t.bigint "product_id", null: false
    t.integer "quantity"
    t.integer "production_cost"
    t.integer "average_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["laboratory_id"], name: "index_laboratory_products_on_laboratory_id"
    t.index ["product_id"], name: "index_laboratory_products_on_product_id"
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "laboratory_id", null: false
    t.bigint "pharmacy_id", null: false
    t.bigint "product_id", null: false
    t.integer "quantity"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["laboratory_id"], name: "index_orders_on_laboratory_id"
    t.index ["pharmacy_id"], name: "index_orders_on_pharmacy_id"
    t.index ["product_id"], name: "index_orders_on_product_id"
  end

  create_table "pharmacies", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pharmacy_products", force: :cascade do |t|
    t.bigint "product_id", null: false
    t.bigint "pharmacy_id", null: false
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pharmacy_id"], name: "index_pharmacy_products_on_pharmacy_id"
    t.index ["product_id"], name: "index_pharmacy_products_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sales", force: :cascade do |t|
    t.bigint "pharmacy_id", null: false
    t.bigint "pharmacy_product_id", null: false
    t.integer "quantity"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pharmacy_id"], name: "index_sales_on_pharmacy_id"
    t.index ["pharmacy_product_id"], name: "index_sales_on_pharmacy_product_id"
  end

  add_foreign_key "laboratory_products", "laboratories"
  add_foreign_key "laboratory_products", "products"
  add_foreign_key "orders", "laboratories"
  add_foreign_key "orders", "pharmacies"
  add_foreign_key "orders", "products"
  add_foreign_key "pharmacy_products", "pharmacies"
  add_foreign_key "pharmacy_products", "products"
  add_foreign_key "sales", "pharmacies"
  add_foreign_key "sales", "pharmacy_products"
end
