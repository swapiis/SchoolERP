class Addcountryidtoarchivedemployee < ActiveRecord::Migration
  def change
    add_column :archived_employees, :country_id, :integer
    add_index :archived_employees, :country_id
    add_index :archived_employees, :employee_position_id
    add_index :archived_employees, :employee_grade_id
    add_index :archived_employees, :employee_department_id
  end
end
