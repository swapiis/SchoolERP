class CreateEmployeeSalaryStructures < ActiveRecord::Migration
  def change
    create_table :employee_salary_structures do |t|
      t.references :employee, index: true
      t.references :payroll_category, index: true
      t.string :amount

      t.timestamps
    end
  end
end
