class CreateIndividualPayslipCategories < ActiveRecord::Migration
  def change
    create_table :individual_payslip_categories do |t|
      t.references :employee, index: true
      t.date :salary_date
      t.string :name
      t.string :amount
      t.boolean :is_deduction
      t.boolean :include_every_month

      t.timestamps
    end
  end
end
