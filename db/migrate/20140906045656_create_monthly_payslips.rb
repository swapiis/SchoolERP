class CreateMonthlyPayslips < ActiveRecord::Migration
  def change
    create_table :monthly_payslips do |t|
      t.date :salary_date
      t.references :employee, index: true
      t.references :payroll_category, index: true
      t.string :amount
      t.boolean :is_approved, null: false, default: false
      t.references :approver, index: true

      t.timestamps
    end
  end
end
