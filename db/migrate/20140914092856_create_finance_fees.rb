class CreateFinanceFees < ActiveRecord::Migration
  def change
    create_table :finance_fees do |t|
      t.references :finance_fee_collection, index: true
      t.references :student, index: true
      t.string :receipt_no
      t.boolean :is_paid

      t.timestamps
    end
  end
end
