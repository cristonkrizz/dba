json.extract! job_post, :id, :posted_by_id, :job_type_id, :company_id, :is_company_name_hidden, :created_date, :job_description, :job_location_id, :is_active, :created_at, :updated_at
json.url job_post_url(job_post, format: :json)
