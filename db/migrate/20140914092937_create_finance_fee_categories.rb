class CreateFinanceFeeCategories < ActiveRecord::Migration
  def change
    create_table :finance_fee_categories do |t|
      t.string :name
      t.text :description
      t.boolean :is_deleted, default: false
      t.boolean :is_master, default: false

      t.timestamps
    end
  end
end
