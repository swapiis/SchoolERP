class CreateEmployeeLeaves < ActiveRecord::Migration
  def change
    create_table :employee_leaves do |t|
      t.references :employee, index: true
      t.references :employee_leave_type, index: true
      t.decimal :leave_count
      t.decimal :leave_taken, precision: 10, scale: 2
      t.date :reset_date
      t.timestamps
    end
  end
end
