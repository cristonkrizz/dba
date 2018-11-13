json.extract! seeker_profile, :id, :first_name, :last_name, :current_salary, :is_annually_monthly, :currency, :created_at, :updated_at
json.url seeker_profile_url(seeker_profile, format: :json)
