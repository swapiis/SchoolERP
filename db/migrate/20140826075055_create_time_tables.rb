class CreateTimeTables < ActiveRecord::Migration
  def change
    create_table :time_tables do |t|
      t.date :start_date
      t.date :end_date
      t.boolean :is_active

      t.timestamps
    end
  end
end
