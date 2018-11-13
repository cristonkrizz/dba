class CreateEducationDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :education_details do |t|
      t.references :user_account, foreign_key: true
      t.string :certificate_degree_name
      t.string :major
      t.string :Institute_university_name
      t.datetime :starting_date
      t.datetime :completion_date
      t.float :percentage
      t.float :cgpa

      t.timestamps
    end
  end
end
