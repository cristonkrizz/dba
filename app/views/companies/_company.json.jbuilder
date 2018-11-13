json.extract! company, :id, :company_name, :profile_description, :business_stream_id, :establishment_date, :company_website_url, :created_at, :updated_at
json.url company_url(company, format: :json)
