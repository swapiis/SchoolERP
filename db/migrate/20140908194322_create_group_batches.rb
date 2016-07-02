class CreateGroupBatches < ActiveRecord::Migration
  def change
    create_table :group_batches do |t|
      t.references :batch_group, index: true
      t.references :batch, index: true

      t.timestamps
    end
  end
end
