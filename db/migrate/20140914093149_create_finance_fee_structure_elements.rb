class CreateFinanceFeeStructureElements < ActiveRecord::Migration
  def change
    create_table :finance_fee_structure_elements do |t|
      t.decimal :amount
      t.string :label
      t.references :batch, index: true
      t.references :category, index: true
      t.references :student, index: true
      t.references :guardian, index: true
      t.references :fee_collection, index: true
      t.boolean :is_deleted, default: false

      t.timestamps
    end
  end
end
