class CreateBatchFeeCollectionDiscounts < ActiveRecord::Migration
  def change
    create_table :batch_fee_collection_discounts do |t|
      t.timestamps
    end
  end
end
