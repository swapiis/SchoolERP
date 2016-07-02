class CreateEmployeePositions < ActiveRecord::Migration
  def change
    create_table :employee_positions do |t|
      t.string :name
      t.references :employee_category, index: true
      t.boolean :status

      t.timestamps
    end
  end
end
