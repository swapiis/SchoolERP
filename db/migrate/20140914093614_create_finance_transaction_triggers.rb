class CreateFinanceTransactionTriggers < ActiveRecord::Migration
  def change
    create_table :finance_transaction_triggers do |t|
      t.string :title
      t.string :description
      t.decimal :percentage
      t.references :category, index: true

      t.timestamps
    end
  end
end
