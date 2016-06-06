class CreateFinanceTransactionCategories < ActiveRecord::Migration
  def change
    create_table :finance_transaction_categories do |t|
      t.string :name
      t.string :description
      t.boolean :is_income
      t.boolean :is_deleted, default: false

      t.timestamps
    end
  end
end
