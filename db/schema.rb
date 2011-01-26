# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110126223332) do

  create_table "areas", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "assignments", :force => true do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "behaviors", :force => true do |t|
    t.text     "description"
    t.decimal  "weighted"
    t.integer  "competency_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.string   "website"
    t.string   "login"
    t.string   "cached_slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "competencies", :force => true do |t|
    t.string   "name"
    t.text     "definition"
    t.integer  "company_id"
    t.decimal  "weighted"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "type"
  end

  create_table "competencies_job_competency_profile", :id => false, :force => true do |t|
    t.integer "competency_id"
    t.integer "job_competency_profile_id"
  end

  create_table "competencies_job_competency_profiles", :id => false, :force => true do |t|
    t.integer  "competency_id"
    t.integer  "job_competency_profile_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "departaments", :force => true do |t|
    t.string   "name"
    t.integer  "area_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "educations", :force => true do |t|
    t.integer  "user_id"
    t.integer  "institute_id"
    t.integer  "specialty_id"
    t.date     "date_from"
    t.date     "date_until"
    t.text     "comment"
    t.string   "type_education"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "institutes", :force => true do |t|
    t.string   "name"
    t.string   "level"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "company_id"
  end

  create_table "job_competency_profiles", :force => true do |t|
    t.string   "name"
    t.integer  "area_id"
    t.integer  "departament_id"
    t.integer  "section_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobs", :force => true do |t|
    t.string   "company"
    t.string   "employment"
    t.text     "description"
    t.date     "date_from"
    t.date     "date_until"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sections", :force => true do |t|
    t.string   "name"
    t.integer  "departament_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "slugs", :force => true do |t|
    t.string   "name"
    t.integer  "sluggable_id"
    t.integer  "sequence",                     :default => 1, :null => false
    t.string   "sluggable_type", :limit => 40
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "slugs", ["name", "sluggable_type", "sequence", "scope"], :name => "index_slugs_on_n_s_s_and_s", :unique => true
  add_index "slugs", ["sluggable_id"], :name => "index_slugs_on_sluggable_id"

  create_table "specialties", :id => false, :force => true do |t|
    t.integer  "id",           :null => false
    t.string   "name"
    t.integer  "institute_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "company_id"
    t.string   "level"
  end

  create_table "types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "first_name",                             :null => false
    t.string   "last_name",                              :null => false
    t.string   "login",                                  :null => false
    t.string   "email",                                  :null => false
    t.string   "crypted_password",                       :null => false
    t.string   "password_salt",                          :null => false
    t.string   "persistence_token",                      :null => false
    t.string   "single_access_token",                    :null => false
    t.string   "perishable_token",                       :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",               :default => false
    t.boolean  "active",              :default => false
    t.integer  "dni"
    t.string   "address"
    t.integer  "country_id"
    t.string   "state_id"
    t.string   "phone"
    t.string   "mobile_phone"
    t.string   "gender"
    t.string   "marital_status"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "cached_slug"
    t.date     "birthday"
    t.integer  "company_id"
  end

  create_table "vacancies", :force => true do |t|
    t.integer  "company_id"
    t.string   "job"
    t.string   "area"
    t.decimal  "remuneration"
    t.date     "vacancy_date"
    t.text     "concerns"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
