class ScaleToLeaves < ActiveRecord::Migration
  def change
    change_column :employee_leaves, :leave_taken,  :decimal, precision: 10, scale: 2
  end
end
