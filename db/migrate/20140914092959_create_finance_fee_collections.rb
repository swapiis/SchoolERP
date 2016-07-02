class CreateFinanceFeeCollections < ActiveRecord::Migration
  def change
    create_table :finance_fee_collections do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.date :due_date
      t.references :finance_fee_category, index: true
      t.references :batch, index: true
      t.boolean :is_deleted, default: false

      t.timestamps
    end
  end
end
