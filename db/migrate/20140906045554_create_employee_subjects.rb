class CreateEmployeeSubjects < ActiveRecord::Migration
  def change
    create_table :employee_subjects do |t|
      t.references :employee, index: true
      t.references :subject, index: true

      t.timestamps
    end
  end
end
