class CreateGradingLevels < ActiveRecord::Migration
  def change
    create_table :grading_levels do |t|
      t.string :name
      t.references :batch, index: true
      t.integer :min_score
      t.string :description
      t.integer :order
      t.boolean :is_deleted, default: false

      t.timestamps
    end
  end
end
