class CreateEmployeeDepartments < ActiveRecord::Migration
  def change
    create_table :employee_departments do |t|
      t.string :code
      t.string :name
      t.boolean :status
       t.references :batch, index: true
      t.references :event, index: true
      t.timestamps
    end
  end
end
