class CreateWeightages < ActiveRecord::Migration
  def change
    create_table :weightages do |t|
      t.integer :percentage
      t.references :placement_exam, index: true
      t.references :question_type, index: true

      t.timestamps
    end
  end
end
