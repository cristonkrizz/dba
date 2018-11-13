json.extract! user_log, :id, :last_login_date, :last_job_apply_date, :created_at, :updated_at
json.url user_log_url(user_log, format: :json)
