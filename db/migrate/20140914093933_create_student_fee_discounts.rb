class CreateStudentFeeDiscounts < ActiveRecord::Migration
  def change
    create_table :student_fee_discounts do |t|
      t.timestamps
    end
  end
end
