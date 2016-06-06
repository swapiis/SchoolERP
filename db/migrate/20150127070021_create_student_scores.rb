class CreateStudentScores < ActiveRecord::Migration
  def change
    create_table :student_scores do |t|
      t.references :placement_exams, index: true
      t.references :students, index: true
      t.float :score

      t.timestamps
    end
  end
end
