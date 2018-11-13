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

  create_table "business_stream", id: :float, limit: 53, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "business_stream_name", limit: 100, null: false
  end

  create_table "company", id: :float, limit: 53, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "company_name", limit: 100, null: false
    t.string "profile_description", limit: 1000, null: false
    t.float "business_stream_id", limit: 53, null: false
    t.datetime "establishment_date", null: false
    t.string "company_website_url", limit: 500, null: false
    t.index ["business_stream_id"], name: "company_business_stream"
  end

  create_table "company_image", id: :float, limit: 53, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.float "company_id", limit: 53, null: false
    t.binary "company_image", limit: 4294967295, null: false
    t.index ["company_id"], name: "company_image_company"
  end

  create_table "education_detail", primary_key: ["user_account_id", "certificate_degree_name", "major"], options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.float "user_account_id", limit: 53, null: false
    t.string "certificate_degree_name", limit: 50, null: false
    t.string "major", limit: 50, null: false
    t.string "Institute_university_name", limit: 50, null: false
    t.datetime "starting_date", null: false
    t.datetime "completion_date"
    t.float "percentage", limit: 53
    t.float "cgpa", limit: 53
  end

  create_table "experience_detail", primary_key: ["user_account_id", "start_date", "end_date"], options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.float "user_account_id", limit: 53, null: false
    t.string "is_current_job", limit: 1, null: false
    t.datetime "start_date", null: false
    t.datetime "end_date", null: false
    t.string "job_title", limit: 50, null: false
    t.string "company_name", limit: 100, null: false
    t.string "job_location_city", limit: 50, null: false
    t.string "job_location_state", limit: 50, null: false
    t.string "job_location_country", limit: 50, null: false
    t.string "description", limit: 4000, null: false
  end

  create_table "job_location", id: :float, limit: 53, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "street_address", limit: 100, null: false
    t.string "city", limit: 50, null: false
    t.string "state", limit: 50, null: false
    t.string "country", limit: 50, null: false
    t.string "zip", limit: 50, null: false
  end

  create_table "job_post", id: :float, limit: 53, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.float "posted_by_id", limit: 53, null: false
    t.float "job_type_id", limit: 53, null: false
    t.float "company_id", limit: 53, null: false
    t.string "is_company_name_hidden", limit: 1, null: false
    t.datetime "created_date", null: false
    t.string "job_description", limit: 500, null: false
    t.float "job_location_id", limit: 53, null: false
    t.string "is_active", limit: 1, null: false
    t.index ["company_id"], name: "job_post_company"
    t.index ["job_location_id"], name: "job_post_job_location"
    t.index ["job_type_id"], name: "job_post_job_type"
    t.index ["posted_by_id"], name: "job_post_user_register"
  end

  create_table "job_post_activity", primary_key: ["user_account_id", "job_post_id"], options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.float "user_account_id", limit: 53, null: false
    t.float "job_post_id", limit: 53, null: false
    t.datetime "apply_date", null: false
    t.index ["job_post_id"], name: "job_post_activity_job_post"
  end

  create_table "job_post_skill_set", primary_key: ["skill_set_id", "job_post_id"], options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.float "skill_set_id", limit: 53, null: false
    t.float "job_post_id", limit: 53, null: false
    t.float "skill_level", limit: 53, null: false
    t.index ["job_post_id"], name: "job_post_skill_set_job_post"
  end

  create_table "job_type", id: :float, limit: 53, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "job_type", limit: 20, null: false
  end

  create_table "seeker_profile", primary_key: "user_account_id", id: :float, limit: 53, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "first_name", limit: 50, null: false
    t.string "last_name", limit: 50, null: false
    t.float "current_salary", limit: 53
    t.string "is_annually_monthly", limit: 1
    t.string "currency", limit: 50
  end

  create_table "seeker_skill_set", primary_key: ["user_account_id", "skill_set_id"], options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.float "user_account_id", limit: 53, null: false
    t.float "skill_set_id", limit: 53, null: false
    t.float "skill_level", limit: 53, null: false
    t.index ["skill_set_id"], name: "seeker_skill_set_skill_set"
  end

  create_table "skill_set", id: :float, limit: 53, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "skill_set_name", limit: 50, null: false
  end

  create_table "user_account", id: :float, limit: 53, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.float "user_type_id", limit: 53, null: false
    t.string "email", null: false
    t.string "password", limit: 100, null: false
    t.datetime "date_of_birth", null: false
    t.string "gender", limit: 1, null: false
    t.string "is_active", limit: 1, null: false
    t.bigint "contact_number", null: false
    t.string "sms_notification_active", limit: 1, null: false
    t.string "email_notification_active", limit: 1, null: false
    t.binary "user_image", limit: 4294967295
    t.datetime "registration_date", null: false
    t.index ["user_type_id"], name: "user_register_user_type"
  end

  create_table "user_log", primary_key: "user_account_id", id: :float, limit: 53, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.datetime "last_login_date", null: false
    t.datetime "last_job_apply_date"
  end

  create_table "user_type", id: :float, limit: 53, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "user_type_name", limit: 20, null: false
  end

  add_foreign_key "company", "business_stream", name: "company_business_stream"
  add_foreign_key "company_image", "company", name: "company_image_company"
  add_foreign_key "education_detail", "seeker_profile", column: "user_account_id", primary_key: "user_account_id", name: "educ_dtl_seeker_profile"
  add_foreign_key "experience_detail", "seeker_profile", column: "user_account_id", primary_key: "user_account_id", name: "exp_dtl_seeker_profile"
  add_foreign_key "job_post", "company", name: "job_post_company"
  add_foreign_key "job_post", "job_location", name: "job_post_job_location"
  add_foreign_key "job_post", "job_type", name: "job_post_job_type"
  add_foreign_key "job_post", "user_account", column: "posted_by_id", name: "job_post_user_register"
  add_foreign_key "job_post_activity", "job_post", name: "job_post_activity_job_post"
  add_foreign_key "job_post_activity", "user_account", name: "job_post_act_user_register"
  add_foreign_key "job_post_skill_set", "job_post", name: "job_post_skill_set_job_post"
  add_foreign_key "job_post_skill_set", "skill_set", name: "job_post_skill_set_skill_set"
  add_foreign_key "seeker_profile", "user_account", name: "seeker_profile_user_register"
  add_foreign_key "seeker_skill_set", "seeker_profile", column: "user_account_id", primary_key: "user_account_id", name: "skill_set_seeker_profile"
  add_foreign_key "seeker_skill_set", "skill_set", name: "seeker_skill_set_skill_set"
  add_foreign_key "user_account", "user_type", name: "user_register_user_type"
  add_foreign_key "user_log", "user_account", name: "use_log_user_register"
end
