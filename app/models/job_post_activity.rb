class JobPostActivity < ApplicationRecord
  belongs_to :user_account
  belongs_to :job_post
end
