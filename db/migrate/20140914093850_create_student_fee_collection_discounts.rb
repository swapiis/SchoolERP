class CreateStudentFeeCollectionDiscounts < ActiveRecord::Migration
  def change
    create_table :student_fee_collection_discounts do |t|
      t.timestamps
    end
  end
end
