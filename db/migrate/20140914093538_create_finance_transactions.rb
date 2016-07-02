class CreateFinanceTransactions < ActiveRecord::Migration
  def change
    create_table :finance_transactions do |t|
      t.string :title
      t.string :description
      t.decimal :amount
      t.date :transaction_date
      t.boolean :fine_included, default: false
      t.references :student, index: true
      t.references :finance_fee, index: true
      t.references :finance_transaction_category, index: true

      t.timestamps
    end
  end
end
