class CreateEmployeeAttendances < ActiveRecord::Migration
  def change
    create_table :employee_attendances do |t|
      t.date :attendance_date
      t.references :employee, index: true
      t.references :employee_leave_type, index: true
      t.string :reason
      t.boolean :is_half_day
      t.timestamps
    end
  end
end
