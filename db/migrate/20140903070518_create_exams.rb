class CreateExams < ActiveRecord::Migration
  def change
    create_table :exams do |t|
      t.references :exam_group, index: true
      t.references :subject, index: true
      t.datetime :start_time
      t.datetime :end_time
      t.integer :maximum_marks
      t.integer :minimum_marks
      t.references :grading_level, index: true
      t.integer :weightage, default: 0

      t.references :event, index: true

      t.timestamps
    end
  end
end
