class JobPost < ApplicationRecord
  belongs_to :posted_by
  belongs_to :job_type
  belongs_to :company
  belongs_to :job_location
end
