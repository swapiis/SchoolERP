class CreateApplyLeaves < ActiveRecord::Migration
  def change
    create_table :apply_leaves do |t|
      t.references :employee, index: true
      t.references :employee_leave_types, index: true
      t.boolean :is_half_day
      t.date :start_date
      t.date :end_date
      t.string :reason
      t.boolean :approved, default: false
      t.boolean :viewed_by_manager, default: false
      t.string :manager_remark
      t.timestamps
    end
  end
end
