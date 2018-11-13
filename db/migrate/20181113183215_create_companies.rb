class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :company_name
      t.string :profile_description
      t.references :business_stream, foreign_key: true
      t.datetime :establishment_date
      t.string :company_website_url

      t.timestamps
    end
  end
end
