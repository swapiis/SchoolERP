class CreateExamScores < ActiveRecord::Migration
  def change
    create_table :exam_scores do |t|
      t.references :student, index: true
      t.references :exam, index: true
      t.decimal :marks
      t.references :grading_level, index: true
      t.string :remarks
      t.boolean :is_failed

      t.timestamps
    end
  end
end
