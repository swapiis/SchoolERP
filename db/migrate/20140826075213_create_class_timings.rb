class CreateClassTimings < ActiveRecord::Migration
  def change
    create_table :class_timings do |t|
      t.references :batch, index: true
      t.string :name
      t.time :start_time
      t.time :end_time
      t.boolean :is_break

      t.timestamps
    end
  end
end
