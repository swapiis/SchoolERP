class CreateWeekdays < ActiveRecord::Migration
  def change
    create_table :weekdays do |t|
      t.references :batch, index: true
      t.string :weekday
      t.timestamps
    end
  end
end
