json.extract! job_location, :id, :street_address, :city, :state, :country, :zip, :created_at, :updated_at
json.url job_location_url(job_location, format: :json)
