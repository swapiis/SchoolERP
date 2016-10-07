class CreateUserEmployees < ActiveRecord::Migration
  def change
    create_table :user_employees do |t|
      t.references :user, index: true
      t.references :employee, index: true
    end
    add_foreign_key :user_employees, :users
    add_foreign_key :user_employees, :employees
  end
end
