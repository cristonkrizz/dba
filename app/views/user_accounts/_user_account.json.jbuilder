json.extract! user_account, :id, :user_type_id, :email, :password, :date_of_birth, :gender, :is_active, :contact_number, :sms_notification_active, :email_notification_active, :user_image, :registration_date, :created_at, :updated_at
json.url user_account_url(user_account, format: :json)
