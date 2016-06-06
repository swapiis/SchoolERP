class CreateFeeCollectionDiscounts < ActiveRecord::Migration
  def change
    create_table :fee_collection_discounts do |t|
      t.string :type
      t.string :name
      t.decimal :discount
      t.references :finance_fee_collection, index: true
      t.references :category, index: true
      t.string :admission_no
      t.references :batch, index: true
      t.boolean :is_deleted, default: false

      t.timestamps
    end
  end
end
