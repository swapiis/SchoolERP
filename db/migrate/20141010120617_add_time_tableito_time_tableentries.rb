class AddTimeTableitoTimeTableentries < ActiveRecord::Migration
  def change
    add_column :time_table_entries, :time_table_id, :integer
    add_index :time_table_entries, :time_table_id
  end
end
