class CreateBatchGroups < ActiveRecord::Migration
  def change
    create_table :batch_groups do |t|
      t.string :name
      t.references :course, index: true

      t.timestamps
    end
  end
end
