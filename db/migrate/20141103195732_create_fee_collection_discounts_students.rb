class CreateFeeCollectionDiscountsStudents < ActiveRecord::Migration
  def change
    create_table :fee_collection_discounts_students do |t|
      t.references :student, index: true
      t.references :fee_collection_discount, [index: true, name: 'discount_id']
      t.timestamps
    end
  end
end
