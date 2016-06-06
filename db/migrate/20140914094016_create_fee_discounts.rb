class CreateFeeDiscounts < ActiveRecord::Migration
  def change
    create_table :fee_discounts do |t|
      t.string :type
      t.string :name
      t.decimal :discount
      t.references :finance_fee_category, index: true
      t.references :category, index: true
      t.string :admission_no
      t.references :batch, index: true
      t.boolean :is_deleted, default: false

      t.timestamps
    end
  end
end
