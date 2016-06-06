class CreateFinanceFeeParticulars < ActiveRecord::Migration
  def change
    create_table :finance_fee_particulars do |t|
      t.string :name
      t.text :description
      t.decimal :amount
      t.references :finance_fee_category, index: true
      t.references :category, index: true
      t.string :admission_no
      t.references :batch, index: true
      t.boolean :is_deleted, default: false

      t.timestamps
    end
  end
end
