class Addformeremployeeid < ActiveRecord::Migration
  def change
    add_column :archived_employees, :former_id, :integer
  end
end
