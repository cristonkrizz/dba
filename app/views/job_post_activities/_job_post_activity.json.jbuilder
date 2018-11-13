json.extract! job_post_activity, :id, :user_account_id, :job_post_id, :apply_date, :created_at, :updated_at
json.url job_post_activity_url(job_post_activity, format: :json)
