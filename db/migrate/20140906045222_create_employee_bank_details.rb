class CreateEmployeeBankDetails < ActiveRecord::Migration
  def change
    create_table :employee_bank_details do |t|
      t.references :employee, index: true
      t.references :bank_field, index: true
      t.string :bank_info

      t.timestamps
    end
  end
end
