class CreateEmployeeDepartments < ActiveRecord::Migration
  def change
    create_table :employee_departments do |t|
      t.string :code
      t.string :name
      t.boolean :status

      t.timestamps
    end
  end
end
