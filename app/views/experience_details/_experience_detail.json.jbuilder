json.extract! experience_detail, :id, :user_account_id, :is_current_job, :start_date, :end_date, :job_title, :company_name, :job_location_city, :job_location_state, :job_location_country, :description, :created_at, :updated_at
json.url experience_detail_url(experience_detail, format: :json)
