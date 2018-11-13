class CreateExperienceDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :experience_details do |t|
      t.references :user_account, foreign_key: true
      t.string :is_current_job
      t.datetime :start_date
      t.datetime :end_date
      t.string :job_title
      t.string :company_name
      t.string :job_location_city
      t.string :job_location_state
      t.string :job_location_country
      t.string :description

      t.timestamps
    end
  end
end
