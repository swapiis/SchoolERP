class CreateBatchesFinanceFeeCategories < ActiveRecord::Migration
  def change
    create_table :batches_finance_fee_categories do |t|
      t.references :finance_fee_category, index: true
      t.references :batch, index: true

      t.timestamps
    end
  end
end
