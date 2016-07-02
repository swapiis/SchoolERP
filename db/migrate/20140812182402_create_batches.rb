class CreateBatches < ActiveRecord::Migration
  def change
    create_table :batches do |t|
      t.string :name
      t.references :course, index: true
      t.string :employee_id
      t.datetime :start_date
      t.datetime :end_date
      t.boolean :is_active, default: true
      t.boolean :is_deleted, default: false

      t.timestamps
    end
  end
end
