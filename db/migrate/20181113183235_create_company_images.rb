class CreateCompanyImages < ActiveRecord::Migration[5.2]
  def change
    create_table :company_images do |t|
      t.references :company, foreign_key: true
      t.binary :company_image

      t.timestamps
    end
  end
end
