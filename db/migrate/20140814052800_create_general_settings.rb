class CreateGeneralSettings < ActiveRecord::Migration
  def change
    create_table :general_settings do |t|
      t.string :school_or_college_name
      t.string :school_or_college_address
      t.string :school_or_college_phone_no
      t.date :finance_start_year_date
      t.date :finance_end_year_date
      t.string :language
      t.string :time_zone
      t.string :country
      t.string :include_grading_system
      t.integer :addmission_number_auto_increament
      t.integer :employee_number_auto_increament
      t.string :enable_news_comment_moderation
      t.attachment :image

      t.timestamps
    end
  end
end
