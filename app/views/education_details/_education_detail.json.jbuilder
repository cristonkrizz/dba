json.extract! education_detail, :id, :user_account_id, :certificate_degree_name, :major, :Institute_university_name, :starting_date, :completion_date, :percentage, :cgpa, :created_at, :updated_at
json.url education_detail_url(education_detail, format: :json)
