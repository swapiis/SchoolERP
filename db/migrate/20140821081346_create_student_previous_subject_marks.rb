class CreateStudentPreviousSubjectMarks < ActiveRecord::Migration
  def change
    create_table :student_previous_subject_marks do |t|
      t.references :student, index: true
      t.string :subject
      t.string :mark
      t.timestamps
    end
  end
end
