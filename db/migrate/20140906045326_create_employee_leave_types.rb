class CreateEmployeeLeaveTypes < ActiveRecord::Migration
  def change
    create_table :employee_leave_types do |t|
      t.string :name
      t.string :code
      t.boolean :status
      t.string :max_leave_count
      t.boolean :enable_carry_forward

      t.timestamps
    end
  end
end
