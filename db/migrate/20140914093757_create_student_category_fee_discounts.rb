class CreateStudentCategoryFeeDiscounts < ActiveRecord::Migration
  def change
    create_table :student_category_fee_discounts do |t|
      t.timestamps
    end
  end
end
