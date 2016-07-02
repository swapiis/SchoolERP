class CreateEmployeeDepartmentEvents < ActiveRecord::Migration
  def change
    create_table :employee_department_events do |t|
      t.references :event, index: true
      t.references :employee_department, index: true

      t.timestamps
    end
  end
end
