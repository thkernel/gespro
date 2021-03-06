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

ActiveRecord::Schema.define(version: 2020_05_10_154658) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "slogan"
    t.string "activity_area"
    t.string "address"
    t.string "phone"
    t.string "po_box"
    t.string "city"
    t.string "country"
    t.string "email"
    t.text "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customer_types", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_customer_types_on_user_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "type"
    t.string "company_name"
    t.string "contact_name"
    t.string "address"
    t.string "city"
    t.string "country"
    t.string "phone"
    t.string "po_box"
    t.string "email"
    t.string "status"
    t.bigint "customer_type_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_type_id"], name: "index_customers_on_customer_type_id"
    t.index ["user_id"], name: "index_customers_on_user_id"
  end

  create_table "material_types", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_material_types_on_user_id"
  end

  create_table "materials", force: :cascade do |t|
    t.bigint "material_type_id"
    t.string "name"
    t.string "brand"
    t.string "serial"
    t.string "model"
    t.string "matriculation_number"
    t.string "serial_number"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["material_type_id"], name: "index_materials_on_material_type_id"
    t.index ["user_id"], name: "index_materials_on_user_id"
  end

  create_table "movement_types", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_movement_types_on_user_id"
  end

  create_table "permission_roles", force: :cascade do |t|
    t.bigint "role_id"
    t.bigint "permission_id"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["permission_id"], name: "index_permission_roles_on_permission_id"
    t.index ["role_id"], name: "index_permission_roles_on_role_id"
  end

  create_table "permissions", force: :cascade do |t|
    t.string "name"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_categories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_product_categories_on_user_id"
  end

  create_table "product_types", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_product_types_on_user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "gender"
    t.text "about"
    t.bigint "service_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["service_id"], name: "index_profiles_on_service_id"
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "provider_types", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_provider_types_on_user_id"
  end

  create_table "providers", force: :cascade do |t|
    t.string "type"
    t.string "name"
    t.string "company_name"
    t.string "contact_name"
    t.string "address"
    t.string "city"
    t.string "country"
    t.string "phone"
    t.string "po_box"
    t.string "email"
    t.string "status"
    t.bigint "provider_type_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["provider_type_id"], name: "index_providers_on_provider_type_id"
    t.index ["user_id"], name: "index_providers_on_user_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.string "parent"
    t.text "description"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_services_on_user_id"
  end

  create_table "store_types", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_store_types_on_user_id"
  end

  create_table "stores", force: :cascade do |t|
    t.bigint "store_type_id"
    t.string "name"
    t.string "address"
    t.string "city"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["store_type_id"], name: "index_stores_on_store_type_id"
    t.index ["user_id"], name: "index_stores_on_user_id"
  end

  create_table "unities", force: :cascade do |t|
    t.string "name"
    t.string "unity_symbol"
    t.text "description"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_unities_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "login"
    t.bigint "role_id"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "uuid"
    t.integer "created_by"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["role_id"], name: "index_users_on_role_id"
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "customer_types", "users"
  add_foreign_key "customers", "customer_types"
  add_foreign_key "customers", "users"
  add_foreign_key "material_types", "users"
  add_foreign_key "materials", "material_types"
  add_foreign_key "materials", "users"
  add_foreign_key "movement_types", "users"
  add_foreign_key "permission_roles", "permissions"
  add_foreign_key "permission_roles", "roles"
  add_foreign_key "product_categories", "users"
  add_foreign_key "product_types", "users"
  add_foreign_key "profiles", "services"
  add_foreign_key "profiles", "users"
  add_foreign_key "provider_types", "users"
  add_foreign_key "providers", "provider_types"
  add_foreign_key "providers", "users"
  add_foreign_key "services", "users"
  add_foreign_key "store_types", "users"
  add_foreign_key "stores", "store_types"
  add_foreign_key "stores", "users"
  add_foreign_key "unities", "users"
  add_foreign_key "users", "roles"
end
