class CreateBatchEvents < ActiveRecord::Migration
  def change
    create_table :batch_events do |t|
      t.references :batch, index: true
      t.references :event, index: true

      t.timestamps
    end
  end
end
