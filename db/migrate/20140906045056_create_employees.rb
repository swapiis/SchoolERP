class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.references :employee_category, index: true
      t.string :employee_number
      t.date :joining_date
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :gender
      t.string :job_title
      t.references :employee_position, index: true
      t.references :employee_department, index: true
      t.integer :reporting_manager_id
      t.references :employee_grade, index: true
      t.string :qualification
      t.text :experience_detail
      t.integer :experience_year
      t.integer :experience_month
      t.boolean :status
      t.string :status_description

      t.date :date_of_birth
      t.string :marital_status
      t.integer :children_count
      t.string :father_name
      t.string :mother_name
      t.string :husband_name
      t.string :blood_group
      t.references :country, index: true

      t.string :home_address_line1
      t.string :home_address_line2
      t.string :home_city
      t.string :home_state
      t.integer :home_country_id
      t.string :home_pin_code

      t.string :office_address_line1
      t.string :office_address_line2
      t.string :office_city
      t.string :office_state
      t.integer :office_country_id
      t.string :office_pin_code

      t.string :office_phone1
      t.string :office_phone2
      t.string :mobile_phone
      t.string :home_phone
      t.string :email
      t.string :fax

      t.column :photo_filename,       :string
      t.column :photo_content_type,   :string
      t.column :photo_data,           :binary,
               limit: 5.megabytes

      t.timestamps
    end
  end
end
