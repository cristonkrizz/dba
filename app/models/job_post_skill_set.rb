class JobPostSkillSet < ApplicationRecord
  belongs_to :skill_set
  belongs_to :job_post
end
