class CreateGroupedExamReports < ActiveRecord::Migration
  def change
    create_table :grouped_exam_reports do |t|
      t.references :batch, index: true
      t.references :student, index: true
      t.references :exam_group, index: true
      t.decimal :marks
      t.string :score_type
      t.references :subject, index: true

      t.timestamps
    end
  end
end
