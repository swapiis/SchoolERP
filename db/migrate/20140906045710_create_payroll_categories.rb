class CreatePayrollCategories < ActiveRecord::Migration
  def change
    create_table :payroll_categories do |t|
      t.string :name
      t.float :percentage
      t.references :payroll_category, index: true
      t.boolean :is_deduction
      t.boolean :status

      t.timestamps
    end
  end
end
