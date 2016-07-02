class CreateFinanceFines < ActiveRecord::Migration
  def change
    create_table :finance_fines do |t|
      t.references :finance_fee, index: true
      t.date :fine_date
      t.decimal :fine

      t.timestamps
    end
  end
end
