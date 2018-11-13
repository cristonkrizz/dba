Rails.application.routes.draw do
  resources :user_types
  resources :user_logs
  resources :user_accounts
  resources :skill_sets
  resources :seeker_skill_sets
  resources :seeker_profiles
  resources :job_types
  resources :job_post_skill_sets
  resources :job_post_activities
  resources :job_posts
  resources :job_locations
  resources :experience_details
  resources :education_details
  resources :company_images
  resources :companies
  resources :business_streams
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
